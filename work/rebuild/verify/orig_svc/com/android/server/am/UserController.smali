.class public Lcom/android/server/am/UserController;
.super Ljava/lang/Object;
.source "UserController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field static final EXCEPTION_TEMPLATE_CANNOT_START_USER_WHEN_NOT_READY:Ljava/lang/String; = "Trying to start user %d before ready"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public volatile mAllowUserUnlocking:Z

.field public mBackgroundUserConsideredDispensableTimeSecs:I

.field public final mCompletedEventTypes:Landroid/util/SparseIntArray;

.field public volatile mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

.field public mCurrentProfileIds:[I

.field public volatile mCurrentUserId:I

.field public mDelayUserDataLocking:Z

.field public final mDoNotAbortShutdownUserIds:Landroid/util/ArraySet;

.field public final mHandler:Landroid/os/Handler;

.field public mInitialized:Z

.field public final mInjector:Lcom/android/server/am/UserController$Injector;

.field public mIsBroadcastSentForSystemUserStarted:Z

.field public mIsBroadcastSentForSystemUserStarting:Z

.field public final mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

.field public volatile mLastUserUnlockingUptime:J

.field public final mLock:Ljava/lang/Object;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mMaxRunningUsers:I

.field public mPendingLogoutTargetUser:Z

.field public final mPendingTargetUserIds:Ljava/util/ArrayDeque;

.field public final mPendingUserStarts:Ljava/util/List;

.field public mReady:Z

.field public mStartedUserArray:[I

.field public final mStartedUsers:Landroid/util/SparseArray;

.field public mStopUserOnSwitch:I

.field public final mSwitchingFromUserMessage:Landroid/util/SparseArray;

.field public final mSwitchingToUserMessage:Landroid/util/SparseArray;

.field public volatile mTargetUserId:I

.field public mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

.field public final mUiHandler:Landroid/os/Handler;

.field public final mUserLifecycleListener:Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;

.field public final mUserLru:Ljava/util/ArrayList;

.field public final mUserProfileGroupIds:Landroid/util/SparseIntArray;

.field public final mUserSwitchObservers:Landroid/os/RemoteCallbackList;

.field public mUserSwitchUiEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$-o2ZbHjoIprlwkLijjweMLgfD84(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;Z)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->lambda$finishUserStopping$11(ILcom/android/server/am/UserState;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$04yyuwtTMJ2ZdcIe_UuIyFqQ6fc(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;II)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->lambda$dispatchUserSwitch$26(Lcom/android/server/am/UserState;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$0WYK10iNo8857sujE8WdzSUHZPE(Lcom/android/server/am/UserController;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->lambda$handleMessage$28(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$2pi6d2IUWelr5he0OwNFwwdnzCk(Lcom/android/server/am/UserController;Landroid/content/Intent;III)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/UserController;->lambda$sendBroadcastBootCompleteForPrivateProfileApps$5(Landroid/content/Intent;III)V

    return-void
.end method

.method public static synthetic $r8$lambda$2xuHIF8gv7HZP_QWWuKsKfNa9DU(ILandroid/app/IUserSwitchObserver;Landroid/os/IRemoteCallback;)V
    .registers 3

    .line 3118
    :try_start_0
    invoke-interface {p1, p0, p2}, Landroid/app/IUserSwitchObserver;->onUserSwitching(ILandroid/os/IRemoteCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public static synthetic $r8$lambda$4EXb41QLyMnfx-mhmIrQi8O0CRY(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;Z)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->lambda$finishUserStopping$12(ILcom/android/server/am/UserState;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$4KU8OkJUxK-3stKHo6H4raruiOA(Landroid/app/IStopUserCallback;I)V
    .registers 2

    .line 1403
    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/IStopUserCallback;->userStopped(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public static synthetic $r8$lambda$6yr8Tv9AbsZkVVby_I911qtMdqk(Lcom/android/server/am/UserController;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->lambda$startUserInternal$17(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AVNy7o00zGag3XtEFLHzJ3bYbZI(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;Z)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->lambda$stopSingleUserLU$9(ILcom/android/server/am/UserState;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$AfEv9X5g5a3YdFCIm-ffHLQn-ts(Lcom/android/server/am/UserController;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->lambda$continueStartUserInternal$19(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$EqEwNahY5H8Dwi13WqqQ4c5wAj8(Lcom/android/server/am/UserController;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->lambda$completeUserSwitch$27(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$HdZJXiGkw2vfoEFivDUcJD4u_Po(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->lambda$finishUserUnlocked$2(Lcom/android/server/am/UserState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HsGToKPjOoywsJphTl3XFPA9suQ(ILandroid/app/IUserSwitchObserver;Landroid/os/IRemoteCallback;)V
    .registers 3

    .line 2629
    :try_start_0
    invoke-interface {p1, p0, p2}, Landroid/app/IUserSwitchObserver;->onBeforeUserSwitching(ILandroid/os/IRemoteCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public static synthetic $r8$lambda$KGnyIzPb2plLdvBGa3Ep_W2H2GQ(Lcom/android/server/am/UserController;ILjava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->lambda$startUserInternal$18(ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kgm63PlLNBrz4db2R4J4MUaXruY(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V
    .registers 3

    const/4 v0, 0x0

    .line 2634
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 2635
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void
.end method

.method public static synthetic $r8$lambda$LYgwFBbxx9XRrYfMSUASCs9H6MY(Lcom/android/server/am/UserController;Landroid/content/Intent;III)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/UserController;->lambda$finishUserUnlockedCompleted$4(Landroid/content/Intent;III)V

    return-void
.end method

.method public static synthetic $r8$lambda$MEdDVsapJ-2rX5J2LPOF8oC_5BY(Lcom/android/server/am/UserController;Landroid/util/Pair;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->lambda$showUserSwitchDialog$21(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pl0dGffnJ6LafEjR1knWj_fGUIo(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;IIILcom/android/server/am/UserState;ZII)V
    .registers 9

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/am/UserController;->lambda$startUserInternal$16(Landroid/content/pm/UserInfo;IIILcom/android/server/am/UserState;ZII)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pm_cczMeOnLSazWne1O2q8Ii48Y(Lcom/android/server/am/UserController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->endUserSwitch()V

    return-void
.end method

.method public static synthetic $r8$lambda$UPIchRrPiWcfMRgR3t4bf8DRiPI(Lcom/android/server/am/UserController;Lcom/android/server/am/UserController$PendingUserStart;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->lambda$resumePendingUserStarts$13(Lcom/android/server/am/UserController$PendingUserStart;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y1enV1V4foSiVnhffls-D3it5rQ(ILjava/lang/Integer;)Z
    .registers 2

    .line 1178
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$YamOgw2jqDdWokTQLJMLRJ6xoMU(Lcom/android/server/am/UserController;ILjava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->lambda$stopSingleUserLU$10(ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aXrMhheLTVS7w6eap82_5eQPhJk(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->lambda$finishUserUnlocking$1(ILcom/android/server/am/UserState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kGLQC2z1UpyqP04Hv6rakZzJtTM(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;Z)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->lambda$stopSingleUserLU$8(ILcom/android/server/am/UserState;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$lspD3Va72ri8aCrogTjkYPDglnw(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->lambda$finishUserUnlockedCompleted$3(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rZCfkm40PtakDtUXmYiaWEXRbw0(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->lambda$finishUserSwitch$0(Lcom/android/server/am/UserState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sSBhKKQDV5Yz1pm_GRCRNkMZxtA(Lcom/android/server/am/UserController;Ljava/util/concurrent/atomic/AtomicBoolean;JLjava/lang/Runnable;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/UserController;->lambda$startTimeoutForOnBeforeUserSwitching$24(Ljava/util/concurrent/atomic/AtomicBoolean;JLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vVRAVcixF-gFZgmEx3eAPDZ-75E(Lcom/android/server/am/UserController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->lambda$scheduleStartProfiles$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$xdoEC7En6y-G-oCpvGy-uJMCrME(Lcom/android/server/am/UserController;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->lambda$dismissUserSwitchDialog$20(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xoIGasPoAhh9iDmXJiKCKbWFzPg(Lcom/android/server/am/UserController;ILjava/util/List;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->lambda$dispatchUserLocking$14(ILjava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCurWaitingUserSwitchCallbacks(Lcom/android/server/am/UserController;)Landroid/util/ArraySet;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/am/UserController;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/am/UserController;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monUserAdded(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->onUserAdded(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smasyncTraceEnd(Ljava/lang/String;I)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/UserController;->asyncTraceEnd(Ljava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 182
    const-class v0, Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3

    .line 500
    new-instance v0, Lcom/android/server/am/UserController$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/am/UserController$Injector;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;-><init>(Lcom/android/server/am/UserController$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/UserController$Injector;)V
    .registers 9

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 297
    iput v0, p0, Lcom/android/server/am/UserController;->mBackgroundUserConsideredDispensableTimeSecs:I

    .line 300
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 307
    iput v1, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    const/16 v2, -0x2710

    .line 311
    iput v2, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 315
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/UserController;->mPendingTargetUserIds:Ljava/util/ArrayDeque;

    .line 321
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 341
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 347
    filled-new-array {v1}, [I

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 356
    new-array v4, v1, [I

    iput-object v4, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 367
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 373
    new-instance v4, Landroid/os/RemoteCallbackList;

    invoke-direct {v4}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    const/4 v4, 0x1

    .line 376
    iput-boolean v4, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 388
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UserController;->mSwitchingFromUserMessage:Landroid/util/SparseArray;

    .line 394
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UserController;->mSwitchingToUserMessage:Landroid/util/SparseArray;

    .line 439
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    .line 446
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    .line 464
    iput v0, p0, Lcom/android/server/am/UserController;->mStopUserOnSwitch:I

    const-wide/16 v4, 0x0

    .line 468
    iput-wide v4, p0, Lcom/android/server/am/UserController;->mLastUserUnlockingUptime:J

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UserController;->mPendingUserStarts:Ljava/util/List;

    .line 482
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UserController;->mDoNotAbortShutdownUserIds:Landroid/util/ArraySet;

    .line 485
    new-instance v0, Lcom/android/server/am/UserController$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/UserController$1;-><init>(Lcom/android/server/am/UserController;)V

    iput-object v0, p0, Lcom/android/server/am/UserController;->mUserLifecycleListener:Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;

    .line 505
    iput-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 507
    invoke-virtual {p1, p0}, Lcom/android/server/am/UserController$Injector;->getHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 508
    invoke-virtual {p1, p0}, Lcom/android/server/am/UserController$Injector;->getUiHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    .line 510
    new-instance v0, Lcom/android/server/am/UserState;

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-direct {v0, v4}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    .line 511
    iget-object v4, v0, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    new-instance v5, Lcom/android/server/am/UserController$UserProgressListener;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/am/UserController$UserProgressListener;-><init>(Lcom/android/server/am/UserController-IA;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 512
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 513
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    invoke-virtual {p1}, Lcom/android/server/am/UserController$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 515
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    return-void
.end method

.method public static asyncTraceBegin(Ljava/lang/String;I)V
    .registers 5

    .line 4351
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s - asyncTraceBegin(%d)"

    invoke-static {v0, v2, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x40

    .line 4352
    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    return-void
.end method

.method public static asyncTraceEnd(Ljava/lang/String;I)V
    .registers 4

    const-wide/16 v0, 0x40

    .line 4356
    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 4357
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s - asyncTraceEnd(%d)"

    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static getUserSwitchTimeoutMs()I
    .registers 2

    .line 4338
    const-string v0, "debug.usercontroller.user_switch_timeout_ms"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4340
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 4342
    :try_start_c
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_10} :catch_11

    return v0

    :catch_11
    :cond_11
    const/16 v0, 0xbb8

    return v0
.end method

.method public static notifyFinished(ILandroid/os/IProgressListener;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 2460
    :try_start_4
    invoke-interface {p1, p0, v0}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method


# virtual methods
.method public final addUserToUserLru(I)V
    .registers 6

    .line 604
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 605
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 606
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 607
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eq p1, v3, :cond_35

    .line 611
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    iget-object p1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 612
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 613
    iget-object p0, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :catchall_33
    move-exception p0

    goto :goto_37

    .line 615
    :cond_35
    :goto_35
    monitor-exit v0

    return-void

    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_33

    throw p0
.end method

.method public final allowBiometricUnlockForPrivateProfile()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final avoidStoppingUserDueToUpcomingAlarm(I)Z
    .registers 6

    .line 3077
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 3078
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getAlarmManagerInternal()Lcom/android/server/AlarmManagerInternal;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/AlarmManagerInternal;->getNextAlarmTriggerTimeForUser(I)J

    move-result-wide p0

    .line 3079
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v2, v0, p0

    if-gez v2, :cond_1c

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    cmp-long p0, p0, v0

    if-gez p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public final avoidStoppingUserRightNow(I)Z
    .registers 3

    .line 3032
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getVisibleActivityUsers()Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController;->avoidStoppingUserRightNow(ILandroid/util/ArraySet;)Z

    move-result p0

    return p0
.end method

.method public final avoidStoppingUserRightNow(ILandroid/util/ArraySet;)Z
    .registers 10

    .line 3046
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3047
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUsersToStopLU(I)[I

    move-result-object v1

    .line 3048
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_6c

    .line 3049
    array-length v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v0, :cond_6b

    aget v4, v1, v3

    .line 3050
    invoke-virtual {p0, v4}, Lcom/android/server/am/UserController;->avoidStoppingUserDueToUpcomingAlarm(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2a

    .line 3052
    sget-object p0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    const-string p2, "User %d shouldn\'t be stopped because user %d will fire an alarm soon"

    .line 3053
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 3052
    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    .line 3056
    :cond_2a
    iget-object v5, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getAudioManagerInternal()Landroid/media/AudioManagerInternal;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/media/AudioManagerInternal;->isUserPlayingAudio(I)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 3058
    sget-object p0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    const-string p2, "User %d shouldn\'t be stopped because user %d is playing audio"

    .line 3059
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 3058
    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    .line 3062
    :cond_4a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 3064
    sget-object p0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    const-string p2, "User %d shouldn\'t be stopped because user %d has a visible activity"

    .line 3065
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 3064
    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_6b
    return v2

    :catchall_6c
    move-exception p0

    .line 3048
    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw p0
.end method

.method public final broadcastBootCompletedIntent(Landroid/content/Intent;III)V
    .registers 21

    move-object/from16 v0, p0

    .line 1118
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    new-instance v3, Lcom/android/server/am/UserController$4;

    move-object/from16 v2, p1

    move/from16 v15, p2

    invoke-direct {v3, v0, v15, v2}, Lcom/android/server/am/UserController$4;-><init>(Lcom/android/server/am/UserController;ILandroid/content/Intent;)V

    const-string v4, "android.permission.RECEIVE_BOOT_COMPLETED"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    const/16 v4, 0xc8

    .line 1132
    invoke-virtual {v0, v4}, Lcom/android/server/am/UserController;->getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    sget v11, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v12, 0x3e8

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v10, 0x0

    move/from16 v13, p3

    move/from16 v14, p4

    move-object v0, v1

    move-object/from16 v1, p1

    .line 1118
    invoke-virtual/range {v0 .. v15}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZIIIII)I

    return-void
.end method

.method public final broadcastProfileAccessibleStateChanged(IILjava/lang/String;)V
    .registers 20

    .line 3360
    new-instance v1, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3361
    const-string v0, "android.intent.extra.USER"

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v0, 0x50000000

    .line 3362
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    .line 3364
    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v11, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 3368
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v12, 0x3e8

    move/from16 v15, p2

    .line 3364
    invoke-virtual/range {v0 .. v15}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZIIIII)I

    return-void
.end method

.method public final canDelayDataLockingForUser(I)Z
    .registers 3

    .line 1762
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->allowBiometricUnlockForPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1763
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object p1

    .line 1764
    iget-boolean p0, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    if-nez p0, :cond_19

    if-eqz p1, :cond_17

    .line 1765
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getAllowStoppingUserWithDelayedLocking()Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0

    .line 1767
    :cond_1b
    iget-boolean p0, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    return p0
.end method

.method public final canInteractWithAcrossProfilesPermission(IZIILjava/lang/String;)Z
    .registers 8

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    return v1

    :cond_5
    if-nez p2, :cond_8

    return v1

    .line 3477
    :cond_8
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string p1, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/am/UserController$Injector;->checkPermissionForPreflight(Ljava/lang/String;IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public canStartMoreUsers()Z
    .registers 3

    .line 736
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 737
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getRunningUsersLU()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget p0, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    if-ge v1, p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 738
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final ceaseJudgeFateOfBackgroundUser(Ljava/lang/Integer;)V
    .registers 4

    .line 2920
    new-instance v0, Lcom/android/server/am/UserController$UserAndLmkThreshold;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/am/UserController$UserAndLmkThreshold;-><init>(II)V

    .line 2921
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 p1, 0xa0

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public final varargs checkCallingHasOneOfThosePermissions(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8

    .line 3843
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_13

    aget-object v3, p2, v2

    .line 3844
    iget-object v4, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4, v3}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_10

    return-void

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3848
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission denial: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "() from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3849
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3850
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " requires "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3852
    array-length p1, p2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_44

    .line 3853
    aget-object p1, p2, v1

    goto :goto_5a

    .line 3854
    :cond_44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "one of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_5a
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3855
    sget-object p1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3856
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 3839
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/UserController;->checkCallingHasOneOfThosePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final checkGetCurrentUserPermissions()V
    .registers 3

    .line 3710
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_49

    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 3712
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_15

    goto :goto_49

    .line 3714
    :cond_15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission Denial: getCurrentUser() from pid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3715
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", uid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3716
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " requires "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3718
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3719
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    :goto_49
    return-void
.end method

.method public final checkHasManageUsersPermission(Ljava/lang/String;)V
    .registers 4

    .line 4007
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v0, "android.permission.MANAGE_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_c

    return-void

    .line 4009
    :cond_c
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You need MANAGE_USERS permission to call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final clearAnyPlansForStoppingBackgroundUser(Ljava/lang/Integer;)V
    .registers 4

    .line 2911
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x96

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 2913
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->ceaseJudgeFateOfBackgroundUser(Ljava/lang/Integer;)V

    return-void
.end method

.method public completeUserSwitch(II)V
    .registers 4

    .line 3220
    new-instance v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/am/UserController;II)V

    .line 3227
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->isUserSwitchUiEnabled()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 3228
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->dismissUserSwitchDialog(Ljava/lang/Runnable;)V

    return-void

    .line 3230
    :cond_f
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final continueStartUserInternal(Landroid/content/pm/UserInfo;IIILcom/android/server/am/UserState;ZII)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    .line 2255
    new-instance v8, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v8}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v3, v10, :cond_1b

    move v11, v10

    goto :goto_1c

    :cond_1b
    move v11, v9

    .line 2257
    :goto_1c
    iget v12, v1, Landroid/content/pm/UserInfo;->id:I

    .line 2259
    const-string/jumbo v13, "updateConfigurationAndProfileIds"

    invoke-virtual {v8, v13}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v11, :cond_7b

    .line 2262
    iget-object v13, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 2263
    :try_start_29
    iget-boolean v14, v0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 2264
    monitor-exit v13
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_78

    .line 2265
    iget-object v13, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v13}, Lcom/android/server/am/UserController$Injector;->updateUserConfiguration()V

    .line 2269
    invoke-virtual {v0}, Lcom/android/server/am/UserController;->updateProfileRelatedCaches()V

    .line 2270
    sget-object v13, Landroid/window/DesktopExperienceFlags;->ENABLE_APPLY_DESK_ACTIVATION_ON_USER_SWITCH:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v13}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v13

    if-eqz v13, :cond_46

    .line 2271
    iget-object v13, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v13}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/android/server/wm/WindowManagerService;->prepareUserStart(I)V

    goto :goto_4f

    .line 2273
    :cond_46
    iget-object v13, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v13}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/android/server/wm/WindowManagerService;->setCurrentUser(I)V

    .line 2275
    :goto_4f
    iget-object v13, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v13}, Lcom/android/server/am/UserController$Injector;->reportCurWakefulnessUsageEvent()V

    if-eqz v14, :cond_83

    .line 2279
    iget-object v13, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v13}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v13

    invoke-virtual {v13, v10}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 2281
    iget-object v13, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v13}, Lcom/android/server/am/UserController$Injector;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v13

    if-eqz v13, :cond_83

    .line 2282
    sget-object v13, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    const-string v14, "Locking the device before moving on with the user switch"

    invoke-static {v13, v14}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    iget-object v13, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v13}, Lcom/android/server/am/UserController$Injector;->lockDeviceNowAndWaitForKeyguardShown()V

    goto :goto_83

    :catchall_78
    move-exception v0

    .line 2264
    :try_start_79
    monitor-exit v13
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v0

    .line 2288
    :cond_7b
    invoke-virtual {v0}, Lcom/android/server/am/UserController;->updateProfileRelatedCaches()V

    .line 2291
    iget v13, v0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-virtual {v0, v13}, Lcom/android/server/am/UserController;->addUserToUserLru(I)V

    .line 2293
    :cond_83
    :goto_83
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2297
    iget v13, v5, Lcom/android/server/am/UserState;->state:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_b0

    .line 2298
    const-string/jumbo v13, "updateStateStopping"

    invoke-virtual {v8, v13}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2302
    iget v13, v5, Lcom/android/server/am/UserState;->lastState:I

    invoke-virtual {v5, v13}, Lcom/android/server/am/UserState;->setState(I)V

    .line 2303
    iget-object v13, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v13}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v13

    iget v14, v5, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v13, v12, v14}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 2304
    iget-object v14, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 2305
    :try_start_a4
    invoke-virtual {v0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 2306
    monitor-exit v14
    :try_end_a8
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_ad

    .line 2308
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :goto_ab
    move v13, v10

    goto :goto_d7

    :catchall_ad
    move-exception v0

    .line 2306
    :try_start_ae
    monitor-exit v14
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    throw v0

    :cond_b0
    const/4 v14, 0x5

    if-ne v13, v14, :cond_d5

    .line 2310
    const-string/jumbo v13, "updateStateShutdown"

    invoke-virtual {v8, v13}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2313
    invoke-virtual {v5, v9}, Lcom/android/server/am/UserState;->setState(I)V

    .line 2314
    iget-object v13, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v13}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v13

    iget v14, v5, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v13, v12, v14}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 2315
    iget-object v13, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 2316
    :try_start_ca
    invoke-virtual {v0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 2317
    monitor-exit v13
    :try_end_ce
    .catchall {:try_start_ca .. :try_end_ce} :catchall_d2

    .line 2319
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_ab

    :catchall_d2
    move-exception v0

    .line 2317
    :try_start_d3
    monitor-exit v13
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d2

    throw v0

    :cond_d5
    move/from16 v13, p6

    .line 2322
    :goto_d7
    iget v14, v5, Lcom/android/server/am/UserState;->state:I

    if-nez v14, :cond_f8

    .line 2323
    const-string/jumbo v14, "updateStateBooting"

    invoke-virtual {v8, v14}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2326
    iget-object v14, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v14}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v14

    invoke-virtual {v14, v12}, Lcom/android/server/pm/UserManagerService;->onBeforeStartUser(I)V

    .line 2331
    iget-object v14, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x32

    invoke-virtual {v14, v15, v12, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2332
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_f8
    const/4 v14, 0x2

    if-ne v3, v14, :cond_123

    .line 2336
    invoke-virtual {v0, v12}, Lcom/android/server/am/UserController;->isCurrentProfile(I)Z

    move-result v3

    if-eqz v3, :cond_102

    goto :goto_123

    :cond_102
    if-lez v4, :cond_114

    if-nez v13, :cond_110

    .line 2342
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/am/UserController;->isUserScheduledForStopping(Ljava/lang/Integer;)Z

    move-result v3

    if-eqz v3, :cond_114

    .line 2344
    :cond_110
    invoke-virtual {v0, v12, v4}, Lcom/android/server/am/UserController;->scheduleStopOfBackgroundUser(II)Z

    goto :goto_12a

    .line 2348
    :cond_114
    iget-object v3, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v14, 0x96

    .line 2349
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 2348
    invoke-virtual {v3, v14, v15}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 2350
    invoke-virtual {v0, v12}, Lcom/android/server/am/UserController;->initiateJudgeFateOfBackgroundUser(I)V

    goto :goto_12a

    .line 2338
    :cond_123
    :goto_123
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/am/UserController;->clearAnyPlansForStoppingBackgroundUser(Ljava/lang/Integer;)V

    .line 2371
    :goto_12a
    const-string/jumbo v3, "sendMessages"

    invoke-virtual {v8, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v11, :cond_162

    .line 2373
    iget-object v3, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v14, 0x3c

    invoke-virtual {v3, v14, v12, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2374
    iget-object v3, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v14, 0xa

    invoke-virtual {v3, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 2375
    iget-object v3, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x1e

    invoke-virtual {v3, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 2376
    iget-object v3, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v14, v2, v12, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2378
    iget-object v3, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v15, v2, v12, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 2379
    invoke-static {}, Lcom/android/server/am/UserController;->getUserSwitchTimeoutMs()I

    move-result v15

    int-to-long v9, v15

    .line 2378
    invoke-virtual {v3, v14, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2382
    :cond_162
    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v1, :cond_167

    const/4 v13, 0x0

    :cond_167
    if-nez v12, :cond_173

    .line 2393
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 2394
    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->isHeadlessSystemUserMode()Z

    move-result v1

    if-eqz v1, :cond_173

    const/4 v9, 0x1

    goto :goto_174

    :cond_173
    const/4 v9, 0x0

    :goto_174
    if-nez v13, :cond_178

    if-eqz v9, :cond_17b

    .line 2396
    :cond_178
    invoke-virtual {v0, v12, v6, v7}, Lcom/android/server/am/UserController;->sendUserStartedBroadcast(III)V

    .line 2398
    :cond_17b
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v11, :cond_1aa

    .line 2401
    const-string/jumbo v1, "moveUserToForeground"

    invoke-virtual {v8, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2402
    sget-object v1, Landroid/window/DesktopExperienceFlags;->ENABLE_APPLY_DESK_ACTIVATION_ON_USER_SWITCH:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v1}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_198

    .line 2403
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1, v2, v12, v5}, Lcom/android/server/wm/WindowManagerService;->startUserSwitchTransition(IILcom/android/server/am/UserState;)V

    goto :goto_1a3

    .line 2405
    :cond_198
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    const-string v2, "continueStartUserInternal"

    invoke-virtual {v1, v12, v5, v2}, Lcom/android/server/wm/WindowManagerService;->moveUserToForeground(ILcom/android/server/am/UserState;Ljava/lang/String;)V

    .line 2408
    :goto_1a3
    invoke-static {v12}, Lcom/android/server/am/EventLogTags;->writeAmSwitchUser(I)V

    .line 2409
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_1c1

    .line 2411
    :cond_1aa
    const-string v1, "finishUserBoot"

    invoke-virtual {v8, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2412
    invoke-virtual {v0, v5}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V

    .line 2413
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-gtz v4, :cond_1c1

    .line 2419
    iget-object v1, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;

    invoke-direct {v2, v0, v12}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/am/UserController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1c1
    :goto_1c1
    if-nez v13, :cond_1c7

    if-eqz v9, :cond_1c6

    goto :goto_1c7

    :cond_1c6
    return-void

    .line 2425
    :cond_1c7
    :goto_1c7
    const-string/jumbo v1, "sendRestartBroadcast"

    invoke-virtual {v8, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2426
    invoke-virtual {v0, v12, v6, v7}, Lcom/android/server/am/UserController;->sendUserStartingBroadcast(III)V

    .line 2427
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public continueUserSwitch(Lcom/android/server/am/UserState;II)V
    .registers 7

    .line 3200
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 3201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "continueUserSwitch-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-to-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3203
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x7580

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3206
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3207
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p3, 0x0

    .line 3210
    iput-boolean p3, p1, Lcom/android/server/am/UserState;->switching:Z

    .line 3211
    invoke-virtual {p0, p2}, Lcom/android/server/am/UserController;->stopGuestOrEphemeralUserIfBackground(I)V

    .line 3212
    invoke-virtual {p0, p2}, Lcom/android/server/am/UserController;->stopUserOnSwitchIfEnforced(I)V

    .line 3213
    invoke-virtual {p0, p2}, Lcom/android/server/am/UserController;->initiateJudgeFateOfBackgroundUser(I)V

    .line 3215
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final dismissUserSwitchDialog(Ljava/lang/Runnable;)V
    .registers 4

    .line 2599
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/am/UserController;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final dispatchForegroundProfileChanged(I)V
    .registers 5

    .line 2611
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 2614
    :try_start_9
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IUserSwitchObserver;

    invoke-interface {v2, p1}, Landroid/app/IUserSwitchObserver;->onForegroundProfileSwitch(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2619
    :cond_17
    iget-object p0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final dispatchLockedBootComplete(I)V
    .registers 5

    .line 2708
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 2711
    :try_start_9
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IUserSwitchObserver;

    invoke-interface {v2, p1}, Landroid/app/IUserSwitchObserver;->onLockedBootComplete(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2716
    :cond_17
    iget-object p0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final dispatchOnBeforeUserSwitching(ILjava/lang/Runnable;)V
    .registers 6

    .line 2623
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 2624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchOnBeforeUserSwitching-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2625
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 2626
    invoke-virtual {p0, v1, p2}, Lcom/android/server/am/UserController;->startTimeoutForOnBeforeUserSwitching(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V

    .line 2627
    new-instance v2, Lcom/android/server/am/UserController$$ExternalSyntheticLambda24;

    invoke-direct {v2, p1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda24;-><init>(I)V

    new-instance p1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda25;

    invoke-direct {p1, v1, p2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda25;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V

    const-string/jumbo p2, "onBeforeUserSwitching"

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/am/UserController;->informUserSwitchObservers(Ljava/util/function/BiConsumer;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2638
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final dispatchUserLocking(ILjava/util/List;)V
    .registers 5

    .line 1686
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/am/UserController;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dispatchUserSwitch(Lcom/android/server/am/UserState;II)V
    .registers 7

    .line 3111
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 3112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchUserSwitch-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-to-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3114
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x757f

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const/4 v1, 0x1

    .line 3115
    iput-boolean v1, p1, Lcom/android/server/am/UserState;->switching:Z

    .line 3116
    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;

    invoke-direct {v1, p3}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;-><init>(I)V

    new-instance v2, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;II)V

    const-string/jumbo p1, "onUserSwitching"

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/am/UserController;->informUserSwitchObservers(Ljava/util/function/BiConsumer;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3127
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public dispatchUserSwitchComplete(II)V
    .registers 8

    .line 2661
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 2662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchUserSwitchComplete-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2663
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 2664
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    :goto_29
    if-ge v2, v1, :cond_67

    .line 2667
    :try_start_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUserSwitchComplete-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 2668
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2667
    invoke-virtual {v0, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2669
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IUserSwitchObserver;

    invoke-interface {v3, p2}, Landroid/app/IUserSwitchObserver;->onUserSwitchComplete(I)V

    .line 2670
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_64} :catch_64

    :catch_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 2675
    :cond_67
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendUserSwitchBroadcasts-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2677
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->sendUserSwitchBroadcasts(II)V

    .line 2678
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2679
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2681
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->endUserSwitch()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 7

    .line 4050
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4051
    :try_start_3
    const-string v1, "  mStartedUsers:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    .line 4052
    :goto_a
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_38

    .line 4053
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 4054
    const-string v4, "    User #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4055
    iget-object v4, v3, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 4056
    const-string v4, ": "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4057
    const-string v4, ""

    invoke-virtual {v3, v4, p1}, Lcom/android/server/am/UserState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :catchall_35
    move-exception p0

    goto/16 :goto_273

    .line 4059
    :cond_38
    const-string v2, "  mStartedUserArray: ["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v2, v1

    .line 4060
    :goto_3e
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    array-length v3, v3

    if-ge v2, v3, :cond_54

    if-lez v2, :cond_4a

    .line 4062
    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4063
    :cond_4a
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 4065
    :cond_54
    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4066
    const-string v2, "  mUserLru: ["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v2, v1

    .line 4067
    :goto_5f
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7a

    if-lez v2, :cond_6e

    .line 4069
    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4070
    :cond_6e
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 4072
    :cond_7a
    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4073
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_b3

    .line 4074
    const-string v2, "  mUserProfileGroupIds:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4075
    :goto_8c
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_b3

    .line 4076
    const-string v2, "    User #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4077
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4078
    const-string v2, " -> profile #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4079
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    .line 4082
    :cond_b3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurrentProfileIds:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurrentUserId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTargetUserId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4085
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingTargetUserIds:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/UserController;->mPendingTargetUserIds:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4086
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingLogoutTargetUser:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mPendingLogoutTargetUser:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastActiveUsersForDelayedLocking:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4088
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDelayUserDataLocking:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4089
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAllowUserUnlocking:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mAllowUserUnlocking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4090
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  isStopUserOnSwitchEnabled():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->isStopUserOnSwitchEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4091
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStopUserOnSwitch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/UserController;->mStopUserOnSwitch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4092
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMaxRunningUsers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4093
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBackgroundUserConsideredDispensableTimeSecs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/UserController;->mBackgroundUserConsideredDispensableTimeSecs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4095
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUserSwitchUiEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4096
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4097
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsBroadcastSentForSystemUserStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mIsBroadcastSentForSystemUserStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4099
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsBroadcastSentForSystemUserStarting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mIsBroadcastSentForSystemUserStarting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSwitchingFromUserMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/UserController;->mSwitchingFromUserMessage:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSwitchingToUserMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/UserController;->mSwitchingToUserMessage:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastUserUnlockingUptime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/UserController;->mLastUserUnlockingUptime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/am/UserController;->mReady:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4105
    monitor-exit v0

    return-void

    :goto_273
    monitor-exit v0
    :try_end_274
    .catchall {:try_start_3 .. :try_end_274} :catchall_35

    throw p0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 14

    .line 4015
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4016
    :try_start_3
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const/4 v1, 0x0

    move v2, v1

    .line 4017
    :goto_9
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const-wide v4, 0x10500000001L

    if-ge v2, v3, :cond_41

    .line 4018
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    const-wide v6, 0x20b00000001L

    .line 4019
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 4020
    iget-object v8, v3, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {p1, v4, v5, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10b00000002L

    .line 4021
    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/am/UserState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4022
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :catchall_3e
    move-exception p0

    goto/16 :goto_d6

    :cond_41
    move v2, v1

    .line 4024
    :goto_42
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    array-length v6, v3

    if-ge v2, v6, :cond_54

    .line 4025
    aget v3, v3, v2

    const-wide v6, 0x20500000002L

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    :cond_54
    move v2, v1

    .line 4027
    :goto_55
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_74

    .line 4028
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-wide v6, 0x20500000003L

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    .line 4030
    :cond_74
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_ab

    move v2, v1

    .line 4031
    :goto_7d
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_ab

    const-wide v6, 0x20b00000004L

    .line 4032
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 4033
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 4034
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 4033
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4035
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 4036
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    const-wide v8, 0x10500000002L

    .line 4035
    invoke-virtual {p1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4037
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7d

    .line 4040
    :cond_ab
    iget v2, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    const-wide v3, 0x10500000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4041
    :goto_b5
    iget-object v2, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    array-length v3, v2

    if-ge v1, v3, :cond_c7

    .line 4042
    aget v2, v2, v1

    const-wide v3, 0x20500000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b5

    .line 4044
    :cond_c7
    iget-boolean p0, p0, Lcom/android/server/am/UserController;->mReady:Z

    const-wide v1, 0x10800000007L

    invoke-virtual {p1, v1, v2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4045
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4046
    monitor-exit v0

    return-void

    :goto_d6
    monitor-exit v0
    :try_end_d7
    .catchall {:try_start_3 .. :try_end_d7} :catchall_3e

    throw p0
.end method

.method public final endUserSwitch()V
    .registers 6

    .line 2686
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->setPerformancePowerMode(Z)V

    .line 2690
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2691
    :try_start_9
    iget-object v2, p0, Lcom/android/server/am/UserController;->mPendingTargetUserIds:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2692
    iget-boolean v3, p0, Lcom/android/server/am/UserController;->mPendingLogoutTargetUser:Z

    const/16 v4, -0x2710

    if-eqz v3, :cond_19

    move v3, v1

    goto :goto_1a

    :cond_19
    move v3, v4

    :goto_1a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2691
    invoke-static {v2, v3}, Lcom/android/internal/util/ObjectUtils;->getOrElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2693
    iget-boolean v3, p0, Lcom/android/server/am/UserController;->mPendingLogoutTargetUser:Z

    if-eqz v3, :cond_31

    iget v3, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    goto :goto_32

    :catchall_2f
    move-exception p0

    goto :goto_46

    :cond_31
    move v3, v4

    .line 2694
    :goto_32
    iput-boolean v1, p0, Lcom/android/server/am/UserController;->mPendingLogoutTargetUser:Z

    .line 2695
    iput v4, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 2696
    invoke-static {}, Landroid/app/ActivityManager;->invalidateGetCurrentUserIdCache()V

    .line 2697
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_2f

    if-eq v2, v4, :cond_3f

    .line 2699
    invoke-virtual {p0, v2}, Lcom/android/server/am/UserController;->switchUser(I)Z

    :cond_3f
    if-eq v3, v4, :cond_45

    const/4 v0, 0x0

    .line 2702
    invoke-virtual {p0, v3, v1, v0, v0}, Lcom/android/server/am/UserController;->stopUser(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    :cond_45
    return-void

    .line 2697
    :goto_46
    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_2f

    throw p0
.end method

.method public final enforceShellRestriction(Ljava/lang/String;I)V
    .registers 5

    .line 3860
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_28

    if-ltz p2, :cond_11

    .line 3861
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_28

    .line 3862
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Shell does not have permission to access user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    :goto_28
    return-void
.end method

.method public ensureNotSpecialUser(I)V
    .registers 4

    if-ltz p1, :cond_3

    return-void

    .line 3491
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call does not support special user #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public exists(I)Z
    .registers 2

    .line 3835
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result p0

    return p0
.end method

.method public expandUserId(I)[I
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    .line 3828
    filled-new-array {p1}, [I

    move-result-object p0

    return-object p0

    .line 3830
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object p0

    return-object p0
.end method

.method public final finishUserBoot(Lcom/android/server/am/UserState;)V
    .registers 3

    const/4 v0, 0x0

    .line 742
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    return-void
.end method

.method public final finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V
    .registers 11

    .line 746
    iget-object v0, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/16 v1, 0x757e

    .line 747
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 749
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 751
    :try_start_e
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_1b

    .line 752
    monitor-exit v1

    return-void

    :catchall_18
    move-exception p0

    goto/16 :goto_f8

    .line 754
    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_18

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 760
    invoke-virtual {p1, v2, v1}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v1

    const/4 v3, 0x4

    if-eqz v1, :cond_91

    .line 761
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserJourneyLogger()Lcom/android/server/pm/UserJourneyLogger;

    move-result-object v1

    .line 762
    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEvent(III)V

    .line 764
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    iget p1, p1, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v1, v0, p1}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    if-nez v0, :cond_73

    .line 766
    iget-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 767
    invoke-virtual {p1}, Lcom/android/server/am/UserController$Injector;->isRuntimeRestarted()Z

    move-result p1

    if-nez p1, :cond_73

    iget-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p1}, Lcom/android/server/am/UserController$Injector;->isFirstBootOrUpgrade()Z

    move-result p1

    if-nez p1, :cond_73

    .line 768
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/16 p1, 0xf0

    const/16 v1, 0xc

    .line 769
    invoke-static {p1, v1, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    const-wide/32 v6, 0x1d4c0

    cmp-long p1, v4, v6

    if-lez p1, :cond_73

    .line 774
    const-string p1, "SystemServerTiming"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finishUserBoot took too long. elapsedTimeMs="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_73
    iget-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    move-result p1

    if-nez p1, :cond_91

    .line 780
    iget-object p1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 790
    iget-boolean p1, p0, Lcom/android/server/am/UserController;->mAllowUserUnlocking:Z

    if-eqz p1, :cond_91

    .line 792
    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/UserController;->sendLockedBootCompletedBroadcast(Landroid/content/IIntentReceiver;I)V

    .line 798
    :cond_91
    iget-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-nez p1, :cond_a1

    .line 801
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    return-void

    .line 802
    :cond_a1
    iget p2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p2, v3}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result p2

    if-eqz p2, :cond_d2

    .line 803
    sget-object p2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (parent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): attempting unlock because parent is unlocked"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    return-void

    .line 807
    :cond_d2
    sget-object p0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (parent "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): delaying unlock because parent is locked"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 754
    :goto_f8
    :try_start_f8
    monitor-exit v1
    :try_end_f9
    .catchall {:try_start_f8 .. :try_end_f9} :catchall_18

    throw p0
.end method

.method public finishUserStopped(Lcom/android/server/am/UserState;Z)V
    .registers 15

    .line 1549
    iget-object v0, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/16 v1, 0x757a

    .line 1555
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1562
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1563
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1564
    :try_start_12
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1565
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/am/UserState;->mKeyEvictedCallbacks:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1566
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, p1, :cond_91

    iget p1, p1, Lcom/android/server/am/UserState;->state:I

    if-eq p1, v6, :cond_30

    goto :goto_91

    .line 1571
    :cond_30
    sget-object p1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing user state from UserController.mStartedUsers for user #"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " as a result of user being stopped"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1575
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1576
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    if-eqz p2, :cond_85

    .line 1578
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_85

    .line 1579
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delayed locking enabled while KeyEvictedCallbacks not empty, userId:"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " callbacks:"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v7

    goto :goto_85

    :catchall_82
    move-exception p0

    goto/16 :goto_1c1

    .line 1584
    :cond_85
    :goto_85
    invoke-virtual {p0, v1, p2}, Lcom/android/server/am/UserController;->updateUserToLockLU(Landroid/content/pm/UserInfo;Z)I

    move-result p1

    const/16 p2, -0x2710

    if-ne p1, p2, :cond_8f

    move p2, v7

    goto :goto_94

    :cond_8f
    move p2, v8

    goto :goto_94

    :cond_91
    :goto_91
    move p1, v0

    move p2, v8

    move v8, v7

    .line 1589
    :goto_94
    monitor-exit v2
    :try_end_95
    .catchall {:try_start_12 .. :try_end_95} :catchall_82

    .line 1590
    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    if-eqz v8, :cond_e7

    .line 1592
    sget-object v5, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Removing user state from UserManager.mUserStates for user #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " as a result of user being stopped"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    iget-object v5, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/pm/UserManagerInternal;->removeUserState(I)V

    .line 1596
    iget-object v5, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5, v0}, Lcom/android/server/am/UserController$Injector;->activityManagerOnUserStopped(I)V

    .line 1599
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "stopPackagesOfStoppedUser-"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "-[stopUser]"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1600
    const-string v5, "finish user"

    invoke-virtual {p0, v0, v5}, Lcom/android/server/am/UserController;->stopPackagesOfStoppedUser(ILjava/lang/String;)V

    .line 1601
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1604
    :cond_e7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    :catch_eb
    :goto_eb
    if-ge v7, v5, :cond_139

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v7, v7, 0x1

    check-cast v9, Landroid/app/IStopUserCallback;

    if-eqz v8, :cond_118

    .line 1607
    :try_start_f7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "stopCallbacks.userStopped-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "-[stopUser]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1608
    invoke-interface {v9, v0}, Landroid/app/IStopUserCallback;->userStopped(I)V

    .line 1609
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_eb

    .line 1611
    :cond_118
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "stopCallbacks.userStopAborted-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "-[stopUser]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1612
    invoke-interface {v9, v0}, Landroid/app/IStopUserCallback;->userStopAborted(I)V

    .line 1613
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_138
    .catch Landroid/os/RemoteException; {:try_start_f7 .. :try_end_138} :catch_eb

    goto :goto_eb

    :cond_139
    const/16 v3, 0xc8

    if-eqz v8, :cond_1af

    .line 1620
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "systemServiceManagerOnUserStopped-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-[stopUser]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1621
    iget-object v5, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5, v0}, Lcom/android/server/am/UserController$Injector;->systemServiceManagerOnUserStopped(I)V

    .line 1622
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1623
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "taskSupervisorRemoveUser-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-[stopUser]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1624
    iget-object v5, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5, v0}, Lcom/android/server/am/UserController$Injector;->taskSupervisorRemoveUser(I)V

    .line 1625
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1628
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v2

    if-eqz v2, :cond_194

    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v2, :cond_194

    .line 1629
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->removeUserEvenWhenDisallowed(I)Z

    .line 1632
    :cond_194
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserJourneyLogger()Lcom/android/server/pm/UserJourneyLogger;

    move-result-object v2

    const/4 v5, -0x1

    .line 1633
    invoke-virtual {v2, v5, v1, v6}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinish(ILandroid/content/pm/UserInfo;I)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    move-result-object v1

    if-eqz v1, :cond_1a6

    .line 1635
    iget-object v2, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_1a6
    if-eqz p2, :cond_1ab

    .line 1639
    invoke-virtual {p0, p1, v4}, Lcom/android/server/am/UserController;->dispatchUserLocking(ILjava/util/List;)V

    .line 1644
    :cond_1ab
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->resumePendingUserStarts(I)V

    goto :goto_1c0

    .line 1646
    :cond_1af
    iget-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p1}, Lcom/android/server/am/UserController$Injector;->getUserJourneyLogger()Lcom/android/server/pm/UserJourneyLogger;

    move-result-object p1

    .line 1647
    invoke-virtual {p1, v0, v6}, Lcom/android/server/pm/UserJourneyLogger;->finishAndClearIncompleteUserJourney(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    move-result-object p1

    if-eqz p1, :cond_1c0

    .line 1649
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_1c0
    :goto_1c0
    return-void

    .line 1589
    :goto_1c1
    :try_start_1c1
    monitor-exit v2
    :try_end_1c2
    .catchall {:try_start_1c1 .. :try_end_1c2} :catchall_82

    throw p0
.end method

.method public final finishUserStopping(ILcom/android/server/am/UserState;Z)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v15, p1

    move-object/from16 v1, p2

    .line 1486
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    const/16 v3, 0x7579

    .line 1487
    invoke-static {v3, v15}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1488
    iget-object v3, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1489
    :try_start_12
    iget v4, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x4

    const/4 v6, 0x5

    if-eq v4, v5, :cond_3d

    .line 1491
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserJourneyLogger()Lcom/android/server/pm/UserJourneyLogger;

    move-result-object v1

    const/4 v4, 0x3

    const/4 v5, -0x1

    .line 1492
    invoke-virtual {v1, v5, v2, v6, v4}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 1495
    iget-object v0, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_3b

    :catchall_2e
    move-exception v0

    goto/16 :goto_e1

    .line 1497
    :cond_31
    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserJourneyLogger()Lcom/android/server/pm/UserJourneyLogger;

    move-result-object v0

    const/4 v1, 0x0

    .line 1498
    invoke-virtual {v0, v5, v2, v6, v1}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 1501
    :goto_3b
    monitor-exit v3

    return-void

    .line 1503
    :cond_3d
    invoke-virtual {v1, v6}, Lcom/android/server/am/UserState;->setState(I)V

    .line 1504
    iget-object v2, v0, Lcom/android/server/am/UserController;->mDoNotAbortShutdownUserIds:Landroid/util/ArraySet;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1505
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_12 .. :try_end_4a} :catchall_2e

    .line 1506
    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 1507
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUserState-STATE_SHUTDOWN-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-[stopUser]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1508
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v3

    iget v4, v1, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v3, v15, v4}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 1509
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1511
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v3, 0x4007

    .line 1513
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1511
    invoke-virtual {v2, v3, v4, v15}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 1514
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/server/SystemServiceManager;->onUserStopping(I)V

    .line 1516
    new-instance v2, Lcom/android/server/am/UserController$$ExternalSyntheticLambda26;

    move/from16 v3, p3

    invoke-direct {v2, v0, v15, v1, v3}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;Z)V

    .line 1523
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 1524
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1529
    :cond_a2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1531
    new-instance v3, Lcom/android/server/am/UserController$7;

    invoke-direct {v3, v0, v15, v2}, Lcom/android/server/am/UserController$7;-><init>(Lcom/android/server/am/UserController;ILjava/lang/Runnable;)V

    .line 1539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcast-ACTION_SHUTDOWN-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-[stopUser]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lcom/android/server/am/UserController;->asyncTraceBegin(Ljava/lang/String;I)V

    .line 1540
    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v11, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1543
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 1544
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v12, 0x3e8

    .line 1540
    invoke-virtual/range {v0 .. v15}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZIIIII)I

    return-void

    .line 1505
    :goto_e1
    :try_start_e1
    monitor-exit v3
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_2e

    throw v0
.end method

.method public finishUserSwitch(Lcom/android/server/am/UserState;)V
    .registers 4

    .line 595
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final finishUserUnlocked(Lcom/android/server/am/UserState;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 931
    iget-object v2, v1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/16 v3, 0x7577

    .line 932
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 934
    invoke-static {v2}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v3

    if-nez v3, :cond_16

    return-void

    .line 935
    :cond_16
    iget-object v3, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 937
    :try_start_19
    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    iget-object v5, v1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v1, :cond_2c

    monitor-exit v3

    return-void

    :catchall_29
    move-exception v0

    goto/16 :goto_125

    :cond_2c
    const/4 v4, 0x2

    const/4 v5, 0x3

    .line 940
    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v4

    if-nez v4, :cond_36

    .line 941
    monitor-exit v3

    return-void

    .line 943
    :cond_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_19 .. :try_end_37} :catchall_29

    .line 944
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v3

    iget v4, v1, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v3, v2, v4}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 945
    iget-object v3, v1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v3}, Lcom/android/internal/util/ProgressReporter;->finish()V

    if-nez v2, :cond_50

    .line 950
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/high16 v4, 0x40000

    invoke-virtual {v3, v4}, Lcom/android/server/am/UserController$Injector;->startPersistentApps(I)V

    .line 952
    :cond_50
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3, v2}, Lcom/android/server/am/UserController$Injector;->installEncryptionUnawareProviders(I)V

    .line 954
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    move-result v3

    const/high16 v4, 0x50000000

    if-nez v3, :cond_a2

    .line 956
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 957
    const-string v5, "android.intent.extra.user_handle"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 958
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move v5, v4

    move-object v4, v3

    .line 960
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v14, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 962
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    move v6, v5

    const/4 v5, 0x0

    move v7, v6

    const/4 v6, 0x0

    move v8, v7

    const/4 v7, 0x0

    move v9, v8

    const/4 v8, 0x0

    move v10, v9

    const/4 v9, 0x0

    move v11, v10

    const/4 v10, 0x0

    move v12, v11

    const/4 v11, -0x1

    move v13, v12

    const/4 v12, 0x0

    move v15, v13

    const/4 v13, 0x0

    move/from16 v18, v15

    const/16 v15, 0x3e8

    move/from16 v22, v18

    move/from16 v18, v2

    move/from16 v2, v22

    .line 960
    invoke-virtual/range {v3 .. v18}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZIIIII)I

    move/from16 v3, v18

    goto :goto_a4

    :cond_a2
    move v3, v2

    move v2, v4

    .line 965
    :goto_a4
    invoke-virtual {v0, v3}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 966
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v5

    if-eqz v5, :cond_f9

    .line 967
    iget-object v5, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-eqz v5, :cond_f9

    .line 970
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    const-string v7, "android.intent.action.PROFILE_ACCESSIBLE"

    invoke-virtual {v0, v3, v6, v7}, Lcom/android/server/am/UserController;->broadcastProfileAccessibleStateChanged(IILjava/lang/String;)V

    .line 977
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_f9

    .line 978
    new-instance v7, Landroid/content/Intent;

    const-string v4, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 980
    const-string v4, "android.intent.extra.USER"

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v7, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 981
    invoke-virtual {v7, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 984
    iget-object v6, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v17, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 986
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    .line 987
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x3e8

    move/from16 v21, v2

    .line 984
    invoke-virtual/range {v6 .. v21}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZIIIII)I

    .line 995
    :cond_f9
    invoke-virtual {v0, v3}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 996
    iget-object v4, v2, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    sget-object v5, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_116

    const-string/jumbo v4, "persist.pm.mock-upgrade"

    const/4 v5, 0x0

    .line 997
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_112

    goto :goto_116

    .line 1005
    :cond_112
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V

    return-void

    .line 1001
    :cond_116
    :goto_116
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    .line 1002
    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    new-instance v5, Lcom/android/server/am/UserController$$ExternalSyntheticLambda21;

    invoke-direct {v5, v0, v1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    invoke-virtual {v4, v3, v2, v5}, Lcom/android/server/am/UserController$Injector;->sendPreBootBroadcast(IZLjava/lang/Runnable;)V

    return-void

    .line 943
    :goto_125
    :try_start_125
    monitor-exit v3
    :try_end_126
    .catchall {:try_start_125 .. :try_end_126} :catchall_29

    throw v0
.end method

.method public final finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1010
    iget-object v2, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/16 v2, 0x7578

    .line 1011
    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1012
    iget-object v2, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1014
    :try_start_12
    iget-object v4, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    iget-object v5, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v0, :cond_25

    monitor-exit v2

    return-void

    :catchall_22
    move-exception v0

    goto/16 :goto_12f

    .line 1015
    :cond_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_22

    .line 1016
    invoke-virtual {v1, v3}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_2d

    goto :goto_33

    .line 1021
    :cond_2d
    invoke-static {v3}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v2

    if-nez v2, :cond_34

    :goto_33
    return-void

    .line 1024
    :cond_34
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserManagerService;->onUserLoggedIn(I)V

    .line 1026
    new-instance v2, Lcom/android/server/am/UserController$$ExternalSyntheticLambda22;

    invoke-direct {v2, v1, v0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;)V

    .line 1027
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_96

    .line 1028
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initializing user #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-boolean v4, v0, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v4, :cond_66

    .line 1030
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_96

    :cond_66
    if-eqz v3, :cond_96

    .line 1032
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.USER_INITIALIZE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x11000000

    .line 1033
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move/from16 v18, v3

    .line 1035
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    new-instance v6, Lcom/android/server/am/UserController$3;

    invoke-direct {v6, v1, v2}, Lcom/android/server/am/UserController$3;-><init>(Lcom/android/server/am/UserController;Ljava/lang/Runnable;)V

    sget v14, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1045
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 1046
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v15, 0x3e8

    .line 1035
    invoke-virtual/range {v3 .. v18}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZIIIII)I

    move/from16 v3, v18

    .line 1050
    :cond_96
    :goto_96
    iget-boolean v2, v0, Landroid/content/pm/UserInfo;->preCreated:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_bc

    .line 1051
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stopping pre-created user "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v0, v4, v5, v5}, Lcom/android/server/am/UserController;->stopUser(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    return-void

    .line 1060
    :cond_bc
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2, v3}, Lcom/android/server/am/UserController$Injector;->startUserWidgets(I)V

    .line 1062
    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x69

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1064
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Posting BOOT_COMPLETED user #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_ff

    .line 1066
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1067
    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->isRuntimeRestarted()Z

    move-result v2

    if-nez v2, :cond_ff

    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->isFirstBootOrUpgrade()Z

    move-result v2

    if-nez v2, :cond_ff

    .line 1068
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/16 v2, 0xf0

    const/16 v4, 0xd

    .line 1069
    invoke-static {v2, v4, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1073
    :cond_ff
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1074
    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v4, -0x77000000

    .line 1075
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1080
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1081
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1083
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_122

    .line 1084
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/am/UserController;->sendBroadcastBootCompleteForPrivateProfileApps(Landroid/content/Intent;III)V

    return-void

    .line 1088
    :cond_122
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda23;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/am/UserController;Landroid/content/Intent;III)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1015
    :goto_12f
    :try_start_12f
    monitor-exit v2
    :try_end_130
    .catchall {:try_start_12f .. :try_end_130} :catchall_22

    throw v0
.end method

.method public final finishUserUnlocking(Lcom/android/server/am/UserState;)Z
    .registers 8

    .line 877
    iget-object v0, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/16 v1, 0x7576

    .line 878
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 879
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserJourneyLogger()Lcom/android/server/pm/UserJourneyLogger;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 880
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEvent(III)V

    .line 883
    invoke-static {v0}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_1e

    return v4

    .line 884
    :cond_1e
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 886
    :try_start_21
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_55

    iget v5, p1, Lcom/android/server/am/UserState;->state:I

    if-eq v5, v3, :cond_2e

    goto :goto_55

    .line 889
    :cond_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_53

    .line 890
    iget-object v1, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v1}, Lcom/android/internal/util/ProgressReporter;->start()V

    .line 893
    iget-object v1, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    iget-object v4, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 894
    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040161

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 893
    invoke-virtual {v1, v2, v4}, Lcom/android/internal/util/ProgressReporter;->setProgress(ILjava/lang/CharSequence;)V

    .line 897
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v3

    :catchall_53
    move-exception p0

    goto :goto_57

    .line 887
    :cond_55
    :goto_55
    :try_start_55
    monitor-exit v1

    return v4

    .line 889
    :goto_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_53

    throw p0
.end method

.method public getCurrentAndTargetUserIds()Landroid/util/Pair;
    .registers 4

    .line 3771
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3772
    :try_start_3
    new-instance v1, Landroid/util/Pair;

    iget v2, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception p0

    .line 3773
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getCurrentOrTargetUserId()I
    .registers 2

    .line 3757
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3758
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 3759
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final getCurrentOrTargetUserIdLU()I
    .registers 3

    .line 3767
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_9

    iget p0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    return p0

    :cond_9
    iget p0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    return p0
.end method

.method public getCurrentProfileIds()[I
    .registers 2

    .line 3907
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3908
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 3909
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getCurrentUser()Landroid/content/pm/UserInfo;
    .registers 3

    .line 3724
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->checkGetCurrentUserPermissions()V

    .line 3728
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_10

    .line 3729
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0

    .line 3731
    :cond_10
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3732
    :try_start_13
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserLU()Landroid/content/pm/UserInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_19
    move-exception p0

    .line 3733
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public getCurrentUserId()I
    .registers 2

    .line 3782
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3783
    :try_start_3
    iget p0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 3784
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getCurrentUserIdChecked()I
    .registers 3

    .line 3740
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->checkGetCurrentUserPermissions()V

    .line 3744
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_c

    .line 3745
    iget p0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    return p0

    .line 3747
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserId()I

    move-result p0

    return p0
.end method

.method public final getCurrentUserLU()Landroid/content/pm/UserInfo;
    .registers 2

    .line 3752
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    move-result v0

    .line 3753
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public getLastUserUnlockingUptime()J
    .registers 3

    .line 4365
    iget-wide v0, p0, Lcom/android/server/am/UserController;->mLastUserUnlockingUptime:J

    return-wide v0
.end method

.method public getMaxRunningUsers()I
    .registers 2

    .line 540
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    :try_start_3
    iget p0, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 542
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getRunningUsersLU()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 622
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 623
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_c
    :goto_c
    if-ge v3, v2, :cond_32

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/Integer;

    .line 624
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/UserState;

    if-nez v5, :cond_25

    goto :goto_c

    .line 629
    :cond_25
    iget v5, v5, Lcom/android/server/am/UserState;->state:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_c

    const/4 v6, 0x5

    if-ne v5, v6, :cond_2e

    goto :goto_c

    .line 634
    :cond_2e
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_32
    return-object v0
.end method

.method public getStartedUserArray()[I
    .registers 2

    .line 3640
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3641
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 3642
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getStartedUserState(I)Lcom/android/server/am/UserState;
    .registers 3

    .line 3510
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3511
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/UserState;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 3512
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getSwitchingFromUserMessage(I)Ljava/lang/String;
    .registers 3

    .line 3982
    const-string v0, "getSwitchingFromUserMessage()"

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->checkHasManageUsersPermission(Ljava/lang/String;)V

    .line 3984
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getSwitchingFromUserMessageUnchecked(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSwitchingFromUserMessageUnchecked(I)Ljava/lang/String;
    .registers 3

    .line 3995
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3996
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/UserController;->mSwitchingFromUserMessage:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 3997
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getSwitchingToUserMessage(I)Ljava/lang/String;
    .registers 3

    .line 3989
    const-string v0, "getSwitchingToUserMessage()"

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->checkHasManageUsersPermission(Ljava/lang/String;)V

    .line 3991
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getSwitchingToUserMessageUnchecked(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSwitchingToUserMessageUnchecked(I)Ljava/lang/String;
    .registers 3

    .line 4001
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4002
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/UserController;->mSwitchingToUserMessage:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 4003
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;
    .registers 10

    .line 4326
    const-class p0, Landroid/app/ActivityManagerInternal;

    .line 4327
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    if-eqz p0, :cond_10

    .line 4329
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v0

    :goto_e
    move-wide v3, v0

    goto :goto_13

    :cond_10
    const-wide/16 v0, 0x2710

    goto :goto_e

    .line 4331
    :goto_13
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    const/4 v5, 0x0

    .line 4332
    const-string v7, ""

    move v6, p1

    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    return-object v2
.end method

.method public getUserIds()[I
    .registers 1

    .line 3817
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p0

    return-object p0
.end method

.method public final getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 2

    .line 3809
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getUserProperties(I)Landroid/content/pm/UserProperties;
    .registers 2

    .line 3813
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object p0

    return-object p0
.end method

.method public getUsers()[I
    .registers 2

    .line 3804
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 3805
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 v0, 0x0

    aput v0, p0, v0

    return-object p0
.end method

.method public final getUsersToStopLU(I)[I
    .registers 11

    .line 1783
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1784
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    .line 1785
    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    .line 1786
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, p1, :cond_47

    const/4 v4, 0x0

    move v5, v4

    :goto_1a
    if-ge v5, v0, :cond_47

    .line 1790
    iget-object v6, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/UserState;

    .line 1791
    iget-object v6, v6, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 1793
    iget-object v7, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    const/4 v8, 0x1

    if-eq v2, v3, :cond_37

    if-ne v2, v7, :cond_37

    move v7, v8

    goto :goto_38

    :cond_37
    move v7, v4

    :goto_38
    if-ne v6, p1, :cond_3b

    goto :goto_3c

    :cond_3b
    move v8, v4

    :goto_3c
    if-eqz v7, :cond_44

    if-eqz v8, :cond_41

    goto :goto_44

    .line 1802
    :cond_41
    invoke-virtual {v1, v6}, Landroid/util/IntArray;->add(I)V

    :cond_44
    :goto_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 1805
    :cond_47
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I
    .registers 25

    move-object/from16 v0, p0

    move/from16 v4, p2

    move/from16 v7, p3

    move/from16 v8, p5

    .line 3374
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-ne v9, v7, :cond_f

    return v7

    .line 3385
    :cond_f
    invoke-virtual {v0, v7}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUser(I)I

    move-result v10

    const/4 v11, 0x3

    if-eqz v4, :cond_103

    const/16 v1, 0x3e8

    if-eq v4, v1, :cond_103

    .line 3389
    invoke-virtual {v0, v9, v10}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    move-result v12

    .line 3390
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1, v4}, Lcom/android/server/am/UserController$Injector;->isCallerRecents(I)Z

    move-result v1

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v1, :cond_31

    if-eqz v12, :cond_31

    :goto_2a
    move-object/from16 v6, p7

    move-object v15, v0

    :cond_2d
    :goto_2d
    move/from16 v16, v14

    goto/16 :goto_99

    .line 3394
    :cond_31
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v5, -0x1

    const/4 v6, 0x1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController$Injector;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-nez v1, :cond_42

    move/from16 v4, p2

    goto :goto_2a

    :cond_42
    if-ne v8, v13, :cond_4c

    move/from16 v4, p2

    move-object/from16 v6, p7

    move-object v15, v0

    :goto_49
    const/16 v16, 0x0

    goto :goto_99

    :cond_4c
    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p7

    move v1, v8

    move v2, v12

    .line 3401
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->canInteractWithAcrossProfilesPermission(IZIILjava/lang/String;)Z

    move-result v8

    move-object v15, v0

    if-eqz v8, :cond_62

    move/from16 v4, p2

    move/from16 v8, p5

    move-object/from16 v6, p7

    goto :goto_2d

    .line 3404
    :cond_62
    iget-object v0, v15, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v4, -0x1

    const/4 v5, 0x1

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v8, p5

    move-object/from16 v6, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController$Injector;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    move v4, v3

    if-eqz v0, :cond_78

    goto :goto_49

    :cond_78
    if-eqz v8, :cond_2d

    if-ne v8, v11, :cond_7d

    goto :goto_2d

    :cond_7d
    if-ne v8, v14, :cond_82

    move/from16 v16, v12

    goto :goto_99

    .line 3416
    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_99
    if-nez v16, :cond_104

    const/4 v0, -0x3

    if-ne v7, v0, :cond_9f

    goto :goto_105

    .line 3424
    :cond_9f
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3425
    const-string v1, "Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p6

    .line 3426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_ba

    .line 3428
    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3429
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3431
    :cond_ba
    const-string v1, " asks to run as user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3432
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3433
    const-string v1, " but is calling from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3434
    invoke-static {v0, v4}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 3435
    const-string v1, "; this requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3436
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v8, v13, :cond_f4

    .line 3438
    const-string v1, " or "

    if-eqz v8, :cond_e0

    if-eq v8, v11, :cond_e0

    if-ne v8, v14, :cond_e8

    if-eqz v12, :cond_e8

    .line 3441
    :cond_e0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3442
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e8
    if-eqz v12, :cond_f4

    if-ne v8, v11, :cond_f4

    .line 3445
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3446
    const-string v1, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3449
    :cond_f4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3450
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3451
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_103
    move-object v15, v0

    :cond_104
    move v9, v10

    :goto_105
    if-nez p4, :cond_10a

    .line 3456
    invoke-virtual {v15, v9}, Lcom/android/server/am/UserController;->ensureNotSpecialUser(I)V

    :cond_10a
    const/16 v0, 0x7d0

    if-ne v4, v0, :cond_13d

    if-ltz v9, :cond_13d

    .line 3460
    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {v15, v0, v9}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_11a

    goto :goto_13d

    .line 3461
    :cond_11a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shell does not have permission to access user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3462
    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13d
    :goto_13d
    return v9
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 9

    .line 4110
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    const/16 v2, 0xc8

    const/16 v3, 0x1388

    const/4 v4, 0x1

    const/4 v5, 0x2

    sparse-switch v0, :sswitch_data_1ae

    goto/16 :goto_1ac

    .line 4207
    :sswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 4208
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v4}, Lcom/android/server/am/UserController;->logUserJourneyBegin(II)V

    .line 4209
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->showUserSwitchDialog(Landroid/util/Pair;)V

    goto/16 :goto_1ac

    .line 4212
    :sswitch_20
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserJourneyLogger()Lcom/android/server/pm/UserJourneyLogger;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 4213
    invoke-virtual {v0, v1, v3}, Lcom/android/server/pm/UserJourneyLogger;->finishAndClearIncompleteUserJourney(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 4214
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto/16 :goto_1ac

    .line 4223
    :sswitch_36
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/UserController$UserAndLmkThreshold;

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->processJudgeFateOfBackgroundUser(Lcom/android/server/am/UserController$UserAndLmkThreshold;)V

    goto/16 :goto_1ac

    .line 4220
    :sswitch_3f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->processScheduledStopOfBackgroundUser(Ljava/lang/Integer;)V

    goto/16 :goto_1ac

    .line 4190
    :sswitch_48
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->reportOnUserCompletedEvent(Ljava/lang/Integer;)V

    goto/16 :goto_1ac

    .line 4217
    :sswitch_51
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/UserController;->completeUserSwitch(II)V

    goto/16 :goto_1ac

    .line 4112
    :sswitch_5a
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v5}, Lcom/android/server/am/UserController;->logUserJourneyBegin(II)V

    .line 4113
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->startUserInForeground(I)V

    goto/16 :goto_1ac

    .line 4204
    :sswitch_66
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->dispatchLockedBootComplete(I)V

    goto/16 :goto_1ac

    .line 4163
    :sswitch_6d
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->onUserUnlocked(I)V

    .line 4164
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4170
    iget v2, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v4, :cond_81

    goto :goto_83

    :cond_81
    const/16 v3, 0x3e8

    .line 4164
    :goto_83
    invoke-virtual {p0, v0, v5, v3}, Lcom/android/server/am/UserController;->scheduleOnUserCompletedEvent(III)V

    .line 4171
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserJourneyLogger()Lcom/android/server/pm/UserJourneyLogger;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1, v1, v5}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEvent(III)V

    goto/16 :goto_1ac

    .line 4145
    :sswitch_93
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4146
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemServiceManager;->onUserUnlocking(I)V

    .line 4148
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, v0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/am/UserController;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4152
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserJourneyLogger()Lcom/android/server/pm/UserJourneyLogger;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v6, 0x5

    invoke-virtual {v2, v3, v6, v5}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEvent(III)V

    .line 4154
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserJourneyLogger()Lcom/android/server/pm/UserJourneyLogger;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEvent(III)V

    .line 4157
    new-instance v1, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 4158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishUserUnlocked-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4159
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/UserState;

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->finishUserUnlocked(Lcom/android/server/am/UserState;)V

    .line 4160
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto/16 :goto_1ac

    .line 4125
    :sswitch_e6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/UserController;->timeoutUserSwitchCallbacks(II)V

    goto/16 :goto_1ac

    .line 4196
    :sswitch_ef
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserController;->dispatchUserSwitchComplete(II)V

    .line 4197
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserJourneyLogger()Lcom/android/server/pm/UserJourneyLogger;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 4198
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/UserJourneyLogger;->logUserSwitchJourneyFinish(ILandroid/content/pm/UserInfo;)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    move-result-object p1

    if-eqz p1, :cond_1ac

    .line 4200
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto/16 :goto_1ac

    .line 4193
    :sswitch_111
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->dispatchForegroundProfileChanged(I)V

    goto/16 :goto_1ac

    .line 4176
    :sswitch_118
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 4178
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    const/16 v4, 0x4008

    .line 4176
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 4179
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 4181
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    const v4, 0x8008

    .line 4179
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 4183
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServiceManager;->onUserSwitching(II)V

    .line 4184
    iget v0, p1, Landroid/os/Message;->arg2:I

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserController;->stopPreviousUserPackagesIfEnabled(II)V

    .line 4185
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/am/UserController;->scheduleOnUserCompletedEvent(III)V

    goto :goto_1ac

    .line 4131
    :sswitch_152
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 4133
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    const v5, 0x8007

    .line 4131
    invoke-virtual {v0, v5, v1, v2}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 4134
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserController;->logUserJourneyBegin(II)V

    .line 4136
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/UserController$Injector;->onUserStarting(I)V

    .line 4137
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v4, v3}, Lcom/android/server/am/UserController;->scheduleOnUserCompletedEvent(III)V

    .line 4141
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserJourneyLogger()Lcom/android/server/pm/UserJourneyLogger;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinish(ILandroid/content/pm/UserInfo;I)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    goto :goto_1ac

    .line 4128
    :sswitch_185
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->startProfiles()V

    goto :goto_1ac

    .line 4122
    :sswitch_189
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/am/UserController;->timeoutUserSwitch(Lcom/android/server/am/UserState;II)V

    goto :goto_1ac

    .line 4119
    :sswitch_195
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/am/UserController;->continueUserSwitch(Lcom/android/server/am/UserState;II)V

    goto :goto_1ac

    .line 4116
    :sswitch_1a1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/am/UserController;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V

    :cond_1ac
    :goto_1ac
    const/4 p0, 0x0

    return p0

    :sswitch_data_1ae
    .sparse-switch
        0xa -> :sswitch_1a1
        0x14 -> :sswitch_195
        0x1e -> :sswitch_189
        0x28 -> :sswitch_185
        0x32 -> :sswitch_152
        0x3c -> :sswitch_118
        0x46 -> :sswitch_111
        0x50 -> :sswitch_ef
        0x5a -> :sswitch_e6
        0x64 -> :sswitch_93
        0x69 -> :sswitch_6d
        0x6e -> :sswitch_66
        0x78 -> :sswitch_5a
        0x82 -> :sswitch_51
        0x8c -> :sswitch_48
        0x96 -> :sswitch_3f
        0xa0 -> :sswitch_36
        0xc8 -> :sswitch_20
        0x3e8 -> :sswitch_e
    .end sparse-switch
.end method

.method public hasStartedUserState(I)Z
    .registers 3

    .line 3516
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3517
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 3518
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public hasUserRestriction(Ljava/lang/String;I)Z
    .registers 3

    .line 3869
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public informUserSwitchObservers(Ljava/util/function/BiConsumer;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 20

    move-object/from16 v1, p0

    .line 3132
    iget-object v0, v1, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v13

    if-nez v13, :cond_13

    .line 3134
    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    .line 3135
    iget-object v0, v1, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    .line 3138
    :cond_13
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 3139
    iget-object v2, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3140
    :try_start_1b
    iput-object v10, v1, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 3141
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_95

    .line 3142
    new-instance v11, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v11, v13}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 3143
    invoke-static {}, Lcom/android/server/am/UserController;->getUserSwitchTimeoutMs()I

    move-result v0

    int-to-long v8, v0

    .line 3144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/4 v14, 0x0

    move v15, v14

    :goto_2e
    if-ge v15, v13, :cond_8f

    .line 3146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 3148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v15}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3149
    iget-object v2, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3150
    :try_start_56
    invoke-virtual {v10, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3151
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_8c

    .line 3152
    new-instance v0, Lcom/android/server/am/UserController$8;

    move-object/from16 v12, p2

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v12}, Lcom/android/server/am/UserController$8;-><init>(Lcom/android/server/am/UserController;Ljava/lang/String;Ljava/lang/String;JJJLandroid/util/ArraySet;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)V

    .line 3181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, p3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lcom/android/server/am/UserController;->asyncTraceBegin(Ljava/lang/String;I)V

    .line 3182
    iget-object v2, v1, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v15}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IUserSwitchObserver;

    move-object/from16 v3, p1

    invoke-interface {v3, v2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_2e

    :catchall_8c
    move-exception v0

    .line 3151
    :try_start_8d
    monitor-exit v2
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw v0

    .line 3184
    :cond_8f
    iget-object v0, v1, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :catchall_95
    move-exception v0

    .line 3141
    :try_start_96
    monitor-exit v2
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v0
.end method

.method public final initiateJudgeFateOfBackgroundUser(I)V
    .registers 6

    .line 2800
    iget v0, p0, Lcom/android/server/am/UserController;->mBackgroundUserConsideredDispensableTimeSecs:I

    if-gez v0, :cond_5

    return-void

    .line 2804
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->isBackgroundUserEligibleForAutomaticStopping(I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2806
    sget-object p0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Exempting user %d from judgement since it is ineligible"

    invoke-static {p0, v0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 2809
    :cond_1b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->isUserScheduledForStopping(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2811
    sget-object p0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Skipping judgement of user %d since it scheduled to stop anyway"

    invoke-static {p0, v0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 2814
    :cond_35
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    move-result v0

    if-ne p1, v0, :cond_51

    .line 2816
    sget-object p0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Exempting user %d from judgement since it is the main user"

    invoke-static {p0, v0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 2821
    :cond_51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->ceaseJudgeFateOfBackgroundUser(Ljava/lang/Integer;)V

    .line 2823
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/16 v2, 0x258

    .line 2824
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 2823
    const-string v2, "Scheduling to judge background user %d in %d seconds"

    invoke-static {v0, v2, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2829
    new-instance v0, Lcom/android/server/am/UserController$UserAndLmkThreshold;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lcom/android/server/am/UserController$UserAndLmkThreshold;-><init>(II)V

    .line 2830
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 p1, 0xa0

    .line 2831
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v0, 0x927c0

    .line 2830
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final isBackgroundUserEligibleForAutomaticStopping(I)Z
    .registers 5

    .line 2764
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    if-nez p1, :cond_b

    return v1

    .line 2772
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->isUserVisible(I)Z

    move-result v0

    if-eqz v0, :cond_12

    return v1

    .line 2776
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2777
    :try_start_15
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->isCurrentProfile(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2779
    monitor-exit v0

    return v1

    :catchall_1d
    move-exception p0

    goto :goto_37

    .line 2781
    :cond_1f
    iget-object p0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/UserState;

    if-eqz p0, :cond_35

    .line 2782
    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    const/4 p1, 0x4

    if-eq p0, p1, :cond_35

    const/4 p1, 0x5

    if-ne p0, p1, :cond_32

    goto :goto_35

    .line 2787
    :cond_32
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 2785
    :cond_35
    :goto_35
    monitor-exit v0

    return v1

    .line 2787
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_15 .. :try_end_38} :catchall_1d

    throw p0
.end method

.method public isCurrentProfile(I)Z
    .registers 3

    .line 3901
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3902
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 3903
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final isCurrentUserLU(I)Z
    .registers 2

    .line 3789
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    move-result p0

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isEarlyPackageKillEnabledForUserSwitch(II)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 590
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->isStopUserOnSwitchEnabled()Z

    move-result p0

    return p0
.end method

.method public isSameProfileGroup(II)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    return v0

    .line 3877
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3878
    :try_start_7
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    .line 3880
    iget-object p0, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-eq p1, v3, :cond_1a

    if-ne p1, p0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 3882
    :goto_1b
    monitor-exit v1

    return v0

    :catchall_1d
    move-exception p0

    .line 3884
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public final isStopUserOnSwitchEnabled()Z
    .registers 6

    .line 562
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 563
    :try_start_3
    iget v1, p0, Lcom/android/server/am/UserController;->mStopUserOnSwitch:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v1, v3, :cond_21

    if-ne v1, v4, :cond_d

    move v2, v4

    .line 565
    :cond_d
    sget-object p0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isStopUserOnSwitchEnabled(): returning overridden value (%b)"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v1, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    monitor-exit v0

    return v2

    :catchall_1f
    move-exception p0

    goto :goto_31

    .line 568
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_1f

    .line 569
    const-string v0, "fw.stop_bg_users_on_switch"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2d

    .line 570
    iget-boolean p0, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    return p0

    :cond_2d
    if-ne v0, v4, :cond_30

    return v4

    :cond_30
    return v2

    .line 568
    :goto_31
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_1f

    throw p0
.end method

.method public isSystemUserStarted()Z
    .registers 5

    .line 3698
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3699
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/UserState;

    if-nez p0, :cond_12

    .line 3701
    monitor-exit v0

    return v1

    :catchall_10
    move-exception p0

    goto :goto_20

    .line 3703
    :cond_12
    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1d

    const/4 v3, 0x2

    if-eq p0, v3, :cond_1d

    const/4 v3, 0x3

    if-ne p0, v3, :cond_1e

    :cond_1d
    move v1, v2

    :cond_1e
    monitor-exit v0

    return v1

    .line 3706
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_10

    throw p0
.end method

.method public isUserOrItsParentRunning(I)Z
    .registers 6

    .line 3888
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3889
    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 p0, 0x1

    .line 3890
    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    goto :goto_21

    .line 3892
    :cond_f
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, v3, :cond_1b

    .line 3894
    monitor-exit v0

    return v1

    .line 3896
    :cond_1b
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 3897
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_d

    throw p0
.end method

.method public isUserRunning(II)Z
    .registers 9

    .line 3646
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    :cond_8
    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    return v2

    :cond_e
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1a

    .line 3654
    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    if-eqz p0, :cond_19

    if-eq p0, v2, :cond_19

    return v0

    :cond_19
    return v2

    :cond_1a
    and-int/lit8 v1, p2, 0x8

    const/4 v3, 0x3

    const/4 v4, 0x5

    const/4 v5, 0x4

    if-eqz v1, :cond_33

    .line 3663
    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    const/4 p2, 0x2

    if-eq p0, p2, :cond_32

    if-eq p0, v3, :cond_32

    if-eq p0, v5, :cond_2d

    if-eq p0, v4, :cond_2d

    return v0

    .line 3670
    :cond_2d
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result p0

    return p0

    :cond_32
    return v2

    :cond_33
    and-int/2addr p2, v5

    if-eqz p2, :cond_45

    .line 3676
    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    if-eq p0, v3, :cond_44

    if-eq p0, v5, :cond_3f

    if-eq p0, v4, :cond_3f

    return v0

    .line 3682
    :cond_3f
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result p0

    return p0

    :cond_44
    return v2

    .line 3688
    :cond_45
    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    if-eq p0, v5, :cond_4c

    if-eq p0, v4, :cond_4c

    return v2

    :cond_4c
    return v0
.end method

.method public final isUserScheduledForStopping(Ljava/lang/Integer;)Z
    .registers 3

    .line 2925
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x96

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->hasEqualMessages(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isUserSwitchUiEnabled()Z
    .registers 2

    .line 534
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 535
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 536
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final isUserVisible(I)Z
    .registers 2

    .line 3800
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserVisible(I)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$completeUserSwitch$27(II)V
    .registers 5

    .line 3223
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3224
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final synthetic lambda$continueStartUserInternal$19(I)V
    .registers 2

    .line 2419
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->stopExcessRunningUsers(I)V

    return-void
.end method

.method public final synthetic lambda$dismissUserSwitchDialog$20(Ljava/lang/Runnable;)V
    .registers 2

    .line 2599
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController$Injector;->dismissUserSwitchingDialog(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic lambda$dispatchUserLocking$14(ILjava/util/List;)V
    .registers 4

    .line 1687
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1688
    sget-object p0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    const-string p1, "User was restarted, skipping key eviction"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1691
    :cond_e
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getLockSettingsInternal()Lcom/android/server/locksettings/LockSettingsInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsInternal;->lockUser(I)V

    if-nez p2, :cond_1a

    goto :goto_2d

    :cond_1a
    const/4 p0, 0x0

    .line 1696
    :goto_1b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_2d

    .line 1697
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UserState$KeyEvictedCallback;

    invoke-interface {v0, p1}, Lcom/android/server/am/UserState$KeyEvictedCallback;->keyEvicted(I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1b

    :cond_2d
    :goto_2d
    return-void
.end method

.method public final synthetic lambda$dispatchUserSwitch$26(Lcom/android/server/am/UserState;II)V
    .registers 5

    .line 3123
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3124
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V

    .line 3125
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final synthetic lambda$finishUserStopping$11(ILcom/android/server/am/UserState;Z)V
    .registers 7

    .line 1518
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 1519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishUserStopped-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-[stopUser]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1520
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/UserController;->finishUserStopped(Lcom/android/server/am/UserState;Z)V

    .line 1521
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final synthetic lambda$finishUserStopping$12(ILcom/android/server/am/UserState;Z)V
    .registers 6

    .line 1517
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic lambda$finishUserSwitch$0(Lcom/android/server/am/UserState;)V
    .registers 2

    .line 596
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V

    .line 597
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->startProfiles()V

    .line 598
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->stopExcessRunningUsers()V

    return-void
.end method

.method public final synthetic lambda$finishUserUnlocked$2(Lcom/android/server/am/UserState;)V
    .registers 2

    .line 1003
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V

    return-void
.end method

.method public final synthetic lambda$finishUserUnlockedCompleted$3(Landroid/content/pm/UserInfo;)V
    .registers 2

    .line 1026
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->makeInitialized(I)V

    return-void
.end method

.method public final synthetic lambda$finishUserUnlockedCompleted$4(Landroid/content/Intent;III)V
    .registers 5

    .line 1089
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/UserController;->broadcastBootCompletedIntent(Landroid/content/Intent;III)V

    return-void
.end method

.method public final synthetic lambda$finishUserUnlocking$1(ILcom/android/server/am/UserState;)V
    .registers 6

    .line 898
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 899
    sget-object p0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    const-string p1, "User\'s CE storage got locked unexpectedly, leaving user locked."

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 903
    :cond_e
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UM.onBeforeUnlockUser-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 905
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService;->onBeforeUnlockUser(I)V

    .line 906
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 907
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 909
    :try_start_38
    invoke-virtual {p2, v1, v2}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v1

    if-nez v1, :cond_42

    .line 910
    monitor-exit v0

    return-void

    :catchall_40
    move-exception p0

    goto :goto_68

    .line 912
    :cond_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_40

    .line 913
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    iget v1, p2, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 915
    iget-object v0, p2, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/internal/util/ProgressReporter;->setProgress(I)V

    .line 917
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/UserController;->mLastUserUnlockingUptime:J

    .line 921
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 912
    :goto_68
    :try_start_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_40

    throw p0
.end method

.method public final synthetic lambda$handleMessage$28(I)V
    .registers 2

    .line 4149
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController$Injector;->loadUserRecents(I)V

    return-void
.end method

.method public final synthetic lambda$resumePendingUserStarts$13(Lcom/android/server/am/UserController$PendingUserStart;)V
    .registers 8

    .line 1668
    iget v1, p1, Lcom/android/server/am/UserController$PendingUserStart;->userId:I

    iget v3, p1, Lcom/android/server/am/UserController$PendingUserStart;->userStartMode:I

    iget v4, p1, Lcom/android/server/am/UserController$PendingUserStart;->autoStopUserInSecs:I

    iget-object v5, p1, Lcom/android/server/am/UserController$PendingUserStart;->unlockListener:Landroid/os/IProgressListener;

    const/4 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->startUserNoChecks(IIIILandroid/os/IProgressListener;)Z

    return-void
.end method

.method public final synthetic lambda$scheduleStartProfiles$15()V
    .registers 4

    .line 1885
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1886
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_15
    return-void
.end method

.method public final synthetic lambda$sendBroadcastBootCompleteForPrivateProfileApps$5(Landroid/content/Intent;III)V
    .registers 10

    .line 1105
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1108
    array-length v1, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_25

    aget-object v3, v0, v2

    .line 1109
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1110
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1111
    invoke-virtual {p0, v4, p2, p3, p4}, Lcom/android/server/am/UserController;->broadcastBootCompletedIntent(Landroid/content/Intent;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_25
    return-void
.end method

.method public final synthetic lambda$showUserSwitchDialog$21(Landroid/util/Pair;)V
    .registers 2

    .line 2607
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/content/pm/UserInfo;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->sendStartUserSwitchFgMessage(I)V

    return-void
.end method

.method public final synthetic lambda$startTimeoutForOnBeforeUserSwitching$24(Ljava/util/concurrent/atomic/AtomicBoolean;JLjava/lang/Runnable;)V
    .registers 7

    const/4 v0, 0x0

    .line 2645
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 2647
    iget-object p1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2648
    :try_start_a
    const-string v0, ", "

    iget-object p0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    .line 2649
    monitor-exit p1
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_3b

    .line 2650
    sget-object p1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timeout on dispatchOnBeforeUserSwitching. These UserSwitchObservers did not respond in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "ms: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_3b
    move-exception p0

    .line 2649
    :try_start_3c
    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p0

    :cond_3e
    return-void
.end method

.method public final synthetic lambda$startUserInternal$16(Landroid/content/pm/UserInfo;IIILcom/android/server/am/UserState;ZII)V
    .registers 9

    .line 2236
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/am/UserController;->continueStartUserInternal(Landroid/content/pm/UserInfo;IIILcom/android/server/am/UserState;ZII)V

    return-void
.end method

.method public final synthetic lambda$startUserInternal$17(Ljava/lang/Runnable;)V
    .registers 2

    .line 2241
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic lambda$startUserInternal$18(ILjava/lang/Runnable;)V
    .registers 4

    .line 2240
    new-instance v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/am/UserController;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController;->dispatchOnBeforeUserSwitching(ILjava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic lambda$stopSingleUserLU$10(ILjava/lang/Runnable;)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1453
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_STOPPING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x40000000    # 2.0f

    .line 1454
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1455
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1456
    const-string v3, "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1458
    new-instance v3, Lcom/android/server/am/UserController$6;

    move-object/from16 v4, p2

    invoke-direct {v3, v0, v1, v4}, Lcom/android/server/am/UserController$6;-><init>(Lcom/android/server/am/UserController;ILjava/lang/Runnable;)V

    .line 1468
    new-instance v4, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 1469
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearBroadcastQueueForUser-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-[stopUser]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1471
    iget-object v5, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5, v1}, Lcom/android/server/am/UserController$Injector;->clearBroadcastQueueForUser(I)V

    .line 1472
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1473
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcast-ACTION_USER_STOPPING-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/server/am/UserController;->asyncTraceBegin(Ljava/lang/String;I)V

    .line 1475
    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    sget v11, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1478
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 1479
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    const/4 v15, -0x1

    move-object v1, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v12, 0x3e8

    .line 1475
    invoke-virtual/range {v0 .. v15}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZIIIII)I

    return-void
.end method

.method public final synthetic lambda$stopSingleUserLU$8(ILcom/android/server/am/UserState;Z)V
    .registers 7

    .line 1437
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 1438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishUserStopping-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-[stopUser]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1439
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->finishUserStopping(ILcom/android/server/am/UserState;Z)V

    .line 1440
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final synthetic lambda$stopSingleUserLU$9(ILcom/android/server/am/UserState;Z)V
    .registers 6

    .line 1436
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final logUserJourneyBegin(II)V
    .registers 6

    .line 4300
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserJourneyLogger()Lcom/android/server/pm/UserJourneyLogger;

    move-result-object v0

    .line 4301
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserJourneyLogger;->finishAndClearIncompleteUserJourney(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    move-result-object v0

    const/16 v1, 0xc8

    if-eqz v0, :cond_13

    .line 4314
    iget-object v2, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4316
    :cond_13
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserJourneyLogger()Lcom/android/server/pm/UserJourneyLogger;

    move-result-object v0

    .line 4317
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyBegin(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    move-result-object v0

    .line 4318
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v0, 0x15f90

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public logoutUser(I)Z
    .registers 7

    .line 1167
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/UserController$Injector;->doesUserSupportSwitchTo(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 1171
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_25

    .line 1173
    :try_start_12
    sget-object p0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    const-string v2, "Cannot logout system user %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1174
    monitor-exit v0

    return v1

    :catchall_23
    move-exception p0

    goto :goto_8b

    .line 1178
    :cond_25
    iget-object v2, p0, Lcom/android/server/am/UserController;->mPendingTargetUserIds:Ljava/util/ArrayDeque;

    new-instance v3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda12;

    invoke-direct {v3, p1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda12;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1180
    iget v2, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/4 v3, 0x1

    if-ne p1, v2, :cond_47

    .line 1181
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    const-string v2, "Cannot logout user %d now as we\'re in the process of switching to it, it will be logged out when the ongoing user-switch is complete."

    .line 1183
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1181
    invoke-static {v1, v2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1184
    iput-boolean v3, p0, Lcom/android/server/am/UserController;->mPendingLogoutTargetUser:Z

    .line 1185
    monitor-exit v0

    return v3

    .line 1187
    :cond_47
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v2

    if-ne p1, v2, :cond_55

    iget v2, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v4, -0x2710

    if-ne v2, v4, :cond_55

    move v2, v3

    goto :goto_56

    :cond_55
    move v2, v1

    .line 1190
    :goto_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_12 .. :try_end_57} :catchall_23

    if-eqz v2, :cond_6f

    .line 1193
    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController;->switchUser(I)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 1194
    sget-object p0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    const-string v0, "Cannot logout user %d; switch to system user failed"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_6f
    const/4 v0, 0x0

    .line 1199
    invoke-virtual {p0, p1, v1, v0, v0}, Lcom/android/server/am/UserController;->stopUser(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result p0

    if-eqz p0, :cond_8a

    .line 1202
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    const-string v2, "Cannot logout user %d; stop user failed with result %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_8a
    return v3

    .line 1190
    :goto_8b
    :try_start_8b
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_23

    throw p0

    .line 1168
    :cond_8d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "device does not support logoutUser"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final maybeUnlockUser(I)Z
    .registers 3

    const/4 v0, 0x0

    .line 2466
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController;->maybeUnlockUser(ILandroid/os/IProgressListener;)Z

    move-result p0

    return p0
.end method

.method public final maybeUnlockUser(ILandroid/os/IProgressListener;)Z
    .registers 10

    .line 2485
    iget-boolean v0, p0, Lcom/android/server/am/UserController;->mAllowUserUnlocking:Z

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 2486
    sget-object p0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    const-string v0, "Not unlocking user %d yet because boot hasn\'t completed"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2487
    invoke-static {p1, p2}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V

    return v1

    .line 2492
    :cond_18
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_23

    .line 2494
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->unlockUserKeyIfUnsecured(I)V

    .line 2496
    :cond_23
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2498
    :try_start_26
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    if-eqz v2, :cond_39

    .line 2500
    iget-object v3, v2, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v3, p2}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    goto :goto_39

    :catchall_36
    move-exception p0

    goto/16 :goto_c7

    .line 2502
    :cond_39
    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_26 .. :try_end_3a} :catchall_36

    if-nez v2, :cond_40

    .line 2505
    invoke-static {p1, p2}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V

    return v1

    .line 2509
    :cond_40
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 2510
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishUserUnlocking-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2511
    invoke-virtual {p0, v2}, Lcom/android/server/am/UserController;->finishUserUnlocking(Lcom/android/server/am/UserState;)Z

    move-result v2

    .line 2512
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v2, :cond_66

    .line 2514
    invoke-static {p1, p2}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V

    return v1

    .line 2522
    :cond_66
    iget-object p2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2523
    :try_start_69
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v2, v0, [I

    move v3, v1

    :goto_72
    if-ge v3, v0, :cond_81

    .line 2525
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    :catchall_7f
    move-exception p0

    goto :goto_c5

    .line 2527
    :cond_81
    monitor-exit p2
    :try_end_82
    .catchall {:try_start_69 .. :try_end_82} :catchall_7f

    :goto_82
    if-ge v1, v0, :cond_c3

    .line 2528
    aget p2, v2, v1

    .line 2529
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_c0

    .line 2530
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, p1, :cond_c0

    if-eq p2, p1, :cond_c0

    .line 2531
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " (parent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): attempting unlock because parent was just unlocked"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    invoke-virtual {p0, p2}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    :cond_c0
    add-int/lit8 v1, v1, 0x1

    goto :goto_82

    :cond_c3
    const/4 p0, 0x1

    return p0

    .line 2527
    :goto_c5
    :try_start_c5
    monitor-exit p2
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_7f

    throw p0

    .line 2502
    :goto_c7
    :try_start_c7
    monitor-exit v0
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_36

    throw p0
.end method

.method public onBootComplete(Landroid/content/IIntentReceiver;)V
    .registers 7

    const/4 v0, 0x1

    .line 3553
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->setAllowUserUnlocking(Z)V

    .line 3557
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3558
    :try_start_7
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    .line 3559
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_40

    const/4 v1, 0x0

    .line 3573
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-nez v3, :cond_16

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 3574
    :goto_1a
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_3f

    .line 3575
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 3576
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 3577
    iget-object v4, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->isHeadlessSystemUserMode()Z

    move-result v4

    if-nez v4, :cond_36

    .line 3578
    invoke-virtual {p0, v3, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    goto :goto_3c

    .line 3580
    :cond_36
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController;->sendLockedBootCompletedBroadcast(Landroid/content/IIntentReceiver;I)V

    .line 3581
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    :goto_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_3f
    return-void

    :catchall_40
    move-exception p0

    .line 3559
    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public onSystemReady()V
    .registers 3

    .line 3591
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserLifecycleListener:Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    .line 3592
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->updateProfileRelatedCaches()V

    .line 3593
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->reportCurWakefulnessUsageEvent()V

    .line 3596
    invoke-static {}, Landroid/app/ActivityManager;->invalidateGetCurrentUserIdCache()V

    .line 3598
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 3599
    :try_start_1a
    iput-boolean v1, p0, Lcom/android/server/am/UserController;->mReady:Z

    .line 3600
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public onSystemUserStarting()V
    .registers 3

    .line 3605
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->isHeadlessSystemUserMode()Z

    move-result v0

    if-nez v0, :cond_14

    .line 3608
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->onUserStarting(I)V

    .line 3609
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController$Injector;->onSystemUserVisibilityChanged(Z)V

    :cond_14
    return-void
.end method

.method public final onUserAdded(Landroid/content/pm/UserInfo;)V
    .registers 5

    .line 3913
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 3916
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3917
    :try_start_a
    iget v1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v2, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-ne v1, v2, :cond_1d

    .line 3918
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    goto :goto_1d

    :catchall_1b
    move-exception p0

    goto :goto_2c

    .line 3920
    :cond_1d
    :goto_1d
    iget v1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_2a

    .line 3921
    iget-object p0, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 3923
    :cond_2a
    monitor-exit v0

    return-void

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_1b

    throw p0
.end method

.method public onUserRemoved(I)V
    .registers 5

    .line 3927
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3928
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_28

    .line 3930
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    if-eq v2, p1, :cond_20

    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 3931
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-ne v2, p1, :cond_25

    goto :goto_20

    :catchall_1e
    move-exception p0

    goto :goto_43

    .line 3932
    :cond_20
    :goto_20
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 3935
    :cond_28
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 3936
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3937
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3938
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 3939
    monitor-exit v0

    return-void

    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_1e

    throw p0
.end method

.method public processJudgeFateOfBackgroundUser(Lcom/android/server/am/UserController$UserAndLmkThreshold;)V
    .registers 9

    .line 2856
    iget v0, p0, Lcom/android/server/am/UserController;->mBackgroundUserConsideredDispensableTimeSecs:I

    if-gez v0, :cond_6

    goto/16 :goto_9e

    .line 2860
    :cond_6
    iget v0, p1, Lcom/android/server/am/UserController$UserAndLmkThreshold;->userId:I

    .line 2861
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->isBackgroundUserEligibleForAutomaticStopping(I)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 2862
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController;->isUserScheduledForStopping(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto/16 :goto_9e

    .line 2869
    :cond_1a
    iget v1, p1, Lcom/android/server/am/UserController$UserAndLmkThreshold;->lmkCountThreshold:I

    .line 2870
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getLmkdKillCount()I

    move-result v2

    .line 2871
    sget-object v3, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    .line 2872
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 2871
    const-string v5, "Comparing current lmkCount %d with threshold level %d for judgement"

    invoke-static {v3, v5, v4}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v4, 0xa0

    if-gez v1, :cond_64

    .line 2881
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v1, p0, Lcom/android/server/am/UserController;->mBackgroundUserConsideredDispensableTimeSecs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {p1, v1, v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 2880
    const-string v1, "Scheduling judgement of background user %d in %d secs with %d lmks"

    invoke-static {v3, v1, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2882
    iget-object p1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/UserController$UserAndLmkThreshold;

    invoke-direct {v1, v0, v2}, Lcom/android/server/am/UserController$UserAndLmkThreshold;-><init>(II)V

    invoke-virtual {p1, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget p0, p0, Lcom/android/server/am/UserController;->mBackgroundUserConsideredDispensableTimeSecs:I

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_64
    if-gt v2, v1, :cond_8a

    .line 2890
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-wide/16 v5, 0x258

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v2, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 2889
    const-string v1, "Judgement: User %d is dispensable; wait %d secs to see if lmks exceed %d"

    invoke-static {v3, v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2891
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v0, 0x927c0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 2900
    :cond_8a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Judgement: User %d is sentenced for stopping"

    invoke-static {v3, v1, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2901
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->rescheduleStopOfBackgroundUser(Ljava/lang/Integer;)Z

    :cond_9e
    :goto_9e
    return-void
.end method

.method public processScheduledStopOfBackgroundUser(Ljava/lang/Integer;)V
    .registers 9

    .line 2986
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2987
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    const-string v2, "Considering stopping-on-schedule background user %d"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2989
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->isUserScheduledForStopping(Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2990
    const-string p0, "User %d is scheduled for bg stopping later, so wait until then"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 2993
    :cond_1f
    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController;->avoidStoppingUserRightNow(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2994
    const-string v1, "Rescheduling bg stopping of user %d because it (or its profile) should not be stopped right now "

    .line 2995
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 2994
    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2996
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->rescheduleStopOfBackgroundUser(Ljava/lang/Integer;)Z

    return-void

    .line 3000
    :cond_32
    iget-object v6, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3001
    :try_start_35
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3002
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    move-result v4

    if-ne v4, v2, :cond_4e

    .line 3004
    monitor-exit v6

    return-void

    :catchall_4b
    move-exception v0

    move-object p0, v0

    goto :goto_8b

    .line 3006
    :cond_4e
    iget-object v2, p0, Lcom/android/server/am/UserController;->mPendingTargetUserIds:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 3008
    monitor-exit v6

    return-void

    .line 3010
    :cond_58
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserLU()Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_78

    .line 3011
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_78

    .line 3013
    const-string v1, "Current user %d is a Guest, so reschedule bg stopping of user %d"

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 3014
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 3013
    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3015
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->rescheduleStopOfBackgroundUser(Ljava/lang/Integer;)Z

    .line 3016
    monitor-exit v6

    return-void

    .line 3018
    :cond_78
    const-string v2, "Stopping-on-schedule background user %d"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    .line 3019
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    .line 3021
    monitor-exit v6

    return-void

    :goto_8b
    monitor-exit v6
    :try_end_8c
    .catchall {:try_start_35 .. :try_end_8c} :catchall_4b

    throw p0
.end method

.method public registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    .registers 5

    .line 3495
    const-string v0, "Observer name cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3496
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v1, "registerUserSwitchObserver"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserController;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3497
    iget-object p0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    return-void
.end method

.method public reportOnUserCompletedEvent(Ljava/lang/Integer;)V
    .registers 8

    .line 4265
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 4268
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 4269
    :try_start_a
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 4270
    iget-object v2, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4271
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_6f

    .line 4275
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4276
    :try_start_22
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UserState;

    if-eqz v0, :cond_39

    .line 4277
    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_39

    const/4 v3, 0x1

    goto :goto_39

    :catchall_37
    move-exception p0

    goto :goto_6d

    :cond_39
    :goto_39
    if-eqz v0, :cond_42

    .line 4280
    iget v0, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_42

    or-int/lit8 v3, v3, 0x2

    .line 4283
    :cond_42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v4, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-ne v0, v4, :cond_4c

    or-int/lit8 v3, v3, 0x4

    .line 4286
    :cond_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_22 .. :try_end_4d} :catchall_37

    .line 4287
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reportOnUserCompletedEvent(%d): stored=%s, eligible=%s"

    .line 4288
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {p1, v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 4287
    invoke-static {v0, v2, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    and-int v0, v1, v3

    .line 4291
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController$Injector;->systemServiceManagerOnUserCompletedEvent(II)V

    return-void

    .line 4286
    :goto_6d
    :try_start_6d
    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_37

    throw p0

    :catchall_6f
    move-exception p0

    .line 4271
    :try_start_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw p0
.end method

.method public final rescheduleStopOfBackgroundUser(Ljava/lang/Integer;)Z
    .registers 4

    .line 2938
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x96

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 2939
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x258

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController;->scheduleStopOfBackgroundUser(II)Z

    move-result p0

    return p0
.end method

.method public restartUser(II)I
    .registers 5

    .line 1209
    new-instance v0, Lcom/android/server/am/UserController$5;

    invoke-direct {v0, p0, p2}, Lcom/android/server/am/UserController$5;-><init>(Lcom/android/server/am/UserController;I)V

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/am/UserController;->stopUser(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result p0

    return p0
.end method

.method public final resumePendingUserStarts(I)V
    .registers 9

    .line 1661
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1662
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1664
    iget-object v2, p0, Lcom/android/server/am/UserController;->mPendingUserStarts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserController$PendingUserStart;

    .line 1665
    iget v4, v3, Lcom/android/server/am/UserController$PendingUserStart;->userId:I

    if-ne v4, p1, :cond_e

    .line 1666
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resumePendingUserStart for"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    iget-object v4, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/am/UserController$$ExternalSyntheticLambda14;

    invoke-direct {v5, p0, v3}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserController$PendingUserStart;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1672
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :catchall_43
    move-exception p0

    goto :goto_4c

    .line 1676
    :cond_45
    iget-object p0, p0, Lcom/android/server/am/UserController;->mPendingUserStarts:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1677
    monitor-exit v0

    return-void

    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_43

    throw p0
.end method

.method public scheduleOnUserCompletedEvent(III)V
    .registers 7

    if-eqz p2, :cond_15

    .line 4244
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 4245
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    or-int/2addr p2, v2

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4246
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw p0

    .line 4249
    :cond_15
    :goto_15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 4250
    iget-object p2, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x8c

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 4251
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 4252
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p3

    .line 4251
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public scheduleStartProfiles()V
    .registers 3

    .line 1884
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/UserController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final scheduleStopOfBackgroundUser(II)Z
    .registers 6

    const/4 v0, 0x0

    if-gtz p2, :cond_4

    return v0

    .line 2958
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->isBackgroundUserEligibleForAutomaticStopping(I)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 2959
    sget-object p0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Not scheduling to stop user %d since it\'s ineligible"

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 2964
    :cond_1a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->ceaseJudgeFateOfBackgroundUser(Ljava/lang/Integer;)V

    .line 2966
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Scheduling to stop user %d in %d seconds"

    invoke-static {v0, v2, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    mul-int/lit16 p2, p2, 0x3e8

    .line 2968
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2969
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x96

    .line 2970
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v0, p2

    .line 2969
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final sendBroadcastBootCompleteForPrivateProfileApps(Landroid/content/Intent;III)V
    .registers 12

    .line 1104
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda29;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/am/UserController;Landroid/content/Intent;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendBroadcastLockedBootCompleteForPrivateProfileApps(Landroid/content/Intent;ILandroid/content/IIntentReceiver;)V
    .registers 26

    move-object/from16 v0, p0

    .line 846
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10700bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 849
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 850
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v3, :cond_5d

    aget-object v5, v1, v4

    .line 851
    new-instance v7, Landroid/content/Intent;

    move-object/from16 v6, p1

    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 852
    invoke-virtual {v7, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 853
    new-instance v9, Lcom/android/server/am/UserController$2;

    move-object/from16 v5, p3

    invoke-direct {v9, v0, v2, v5}, Lcom/android/server/am/UserController$2;-><init>(Lcom/android/server/am/UserController;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/content/IIntentReceiver;)V

    .line 864
    iget-object v6, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v8, "android.permission.RECEIVE_BOOT_COMPLETED"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v13

    const/16 v8, 0xca

    .line 866
    invoke-virtual {v0, v8}, Lcom/android/server/am/UserController;->getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;

    move-result-object v8

    .line 867
    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v15

    sget v17, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 868
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, -0x1

    const/16 v16, 0x0

    const/16 v18, 0x3e8

    move/from16 v21, p2

    .line 864
    invoke-virtual/range {v6 .. v21}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZIIIII)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_5d
    return-void
.end method

.method public final sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V
    .registers 7

    .line 3189
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 3190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendContinueUserSwitchLU-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-to-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3191
    iput-object v1, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 3192
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3193
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {p0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3195
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public sendForegroundProfileChanged(I)V
    .registers 4

    .line 3501
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3502
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final sendLockedBootCompletedBroadcast(Landroid/content/IIntentReceiver;I)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v15, p2

    .line 813
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 814
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v1, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, -0x77000000

    .line 815
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 819
    invoke-virtual {v0, v15}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 820
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v2

    if-eqz v2, :cond_28

    move-object/from16 v3, p1

    .line 821
    invoke-virtual {v0, v1, v15, v3}, Lcom/android/server/am/UserController;->sendBroadcastLockedBootCompleteForPrivateProfileApps(Landroid/content/Intent;ILandroid/content/IIntentReceiver;)V

    return-void

    :cond_28
    move-object/from16 v3, p1

    .line 825
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v4, "android.permission.RECEIVE_BOOT_COMPLETED"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    const/16 v4, 0xca

    .line 828
    invoke-virtual {v0, v4}, Lcom/android/server/am/UserController;->getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 829
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    sget v11, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 831
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    move-object v0, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v10, 0x0

    const/16 v12, 0x3e8

    .line 825
    invoke-virtual/range {v0 .. v15}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZIIIII)I

    return-void
.end method

.method public final sendStartUserSwitchFgMessage(I)V
    .registers 4

    .line 2594
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2595
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendUserStartedBroadcast(III)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v15, p1

    if-nez v15, :cond_18

    .line 3243
    iget-object v1, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3245
    :try_start_9
    iget-boolean v2, v0, Lcom/android/server/am/UserController;->mIsBroadcastSentForSystemUserStarted:Z

    if-eqz v2, :cond_11

    .line 3246
    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    goto :goto_16

    :cond_11
    const/4 v2, 0x1

    .line 3248
    iput-boolean v2, v0, Lcom/android/server/am/UserController;->mIsBroadcastSentForSystemUserStarted:Z

    .line 3249
    monitor-exit v1

    goto :goto_18

    :goto_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_f

    throw v0

    .line 3251
    :cond_18
    :goto_18
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.USER_STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x50000000

    .line 3252
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3254
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v1, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3255
    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v11, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v12, 0x3e8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v13, p2

    move/from16 v14, p3

    invoke-virtual/range {v0 .. v15}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZIIIII)I

    return-void
.end method

.method public sendUserStartingBroadcast(III)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-nez v1, :cond_18

    .line 3265
    iget-object v2, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3267
    :try_start_9
    iget-boolean v3, v0, Lcom/android/server/am/UserController;->mIsBroadcastSentForSystemUserStarting:Z

    if-eqz v3, :cond_11

    .line 3268
    monitor-exit v2

    return-void

    :catchall_f
    move-exception v0

    goto :goto_16

    :cond_11
    const/4 v3, 0x1

    .line 3270
    iput-boolean v3, v0, Lcom/android/server/am/UserController;->mIsBroadcastSentForSystemUserStarting:Z

    .line 3271
    monitor-exit v2

    goto :goto_18

    :goto_16
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_f

    throw v0

    .line 3273
    :cond_18
    :goto_18
    new-instance v4, Landroid/content/Intent;

    const-string v2, "android.intent.action.USER_STARTING"

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 3274
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3275
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3276
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    new-instance v6, Lcom/android/server/am/UserController$9;

    invoke-direct {v6, v0}, Lcom/android/server/am/UserController$9;-><init>(Lcom/android/server/am/UserController;)V

    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v10

    sget v14, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v15, 0x3e8

    const/16 v18, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v16, p2

    move/from16 v17, p3

    invoke-virtual/range {v3 .. v18}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZIIIII)I

    return-void
.end method

.method public sendUserSwitchBroadcasts(II)V
    .registers 33

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 3291
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 3292
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    .line 3293
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 3296
    const-string v3, "android.intent.extra.USER"

    const-string v4, "android.intent.extra.user_handle"

    const/high16 v5, 0x50000000

    const/4 v6, 0x0

    if-ltz v1, :cond_87

    .line 3298
    :try_start_1b
    iget-object v7, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v7}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v7

    invoke-virtual {v7, v1, v6}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    .line 3299
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    move v8, v6

    :goto_2a
    if-ge v8, v7, :cond_87

    .line 3301
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    .line 3302
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3303
    invoke-virtual {v10, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3305
    invoke-virtual {v10, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3308
    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v10, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object v11, v3

    .line 3309
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v14, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v15, 0x3e8

    move v12, v5

    const/4 v5, 0x0

    move v13, v6

    const/4 v6, 0x0

    move/from16 v18, v7

    const/4 v7, 0x0

    move/from16 v21, v8

    const/4 v8, 0x0

    move/from16 v22, v18

    move/from16 v18, v9

    const/4 v9, 0x0

    move-object/from16 v23, v4

    move-object v4, v10

    const/4 v10, 0x0

    move-object/from16 v24, v11

    const/4 v11, -0x1

    move/from16 v25, v12

    const/4 v12, 0x0

    move/from16 v26, v13

    const/4 v13, 0x0

    move-object/from16 p1, v1

    move-object/from16 v28, v23

    move-object/from16 v27, v24

    move/from16 v1, v26

    invoke-virtual/range {v3 .. v18}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZIIIII)I

    add-int/lit8 v8, v21, 0x1

    move v6, v1

    move/from16 v7, v22

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    const/high16 v5, 0x50000000

    move-object/from16 v1, p1

    goto :goto_2a

    :catchall_84
    move-exception v0

    goto/16 :goto_133

    :cond_87
    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move v1, v6

    if-ltz v2, :cond_137

    .line 3317
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v3

    .line 3318
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :goto_9c
    if-ge v1, v4, :cond_f7

    .line 3320
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    move v6, v4

    .line 3321
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.USER_FOREGROUND"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x50000000

    .line 3322
    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v8, v28

    .line 3324
    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3327
    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    move-object/from16 v10, v27

    invoke-virtual {v4, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object v9, v3

    .line 3328
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v14, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v15, 0x3e8

    move/from16 v18, v5

    const/4 v5, 0x0

    move v11, v6

    const/4 v6, 0x0

    move/from16 v29, v7

    const/4 v7, 0x0

    move-object/from16 v23, v8

    const/4 v8, 0x0

    move-object v12, v9

    const/4 v9, 0x0

    move-object/from16 v24, v10

    const/4 v10, 0x0

    move v13, v11

    const/4 v11, -0x1

    move-object/from16 v21, v12

    const/4 v12, 0x0

    move/from16 v22, v13

    const/4 v13, 0x0

    move-object/from16 v0, v23

    move/from16 v23, v1

    move/from16 v1, v29

    invoke-virtual/range {v3 .. v18}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZIIIII)I

    add-int/lit8 v3, v23, 0x1

    move-object/from16 v28, v0

    move v1, v3

    move-object/from16 v3, v21

    move/from16 v4, v22

    move-object/from16 v27, v24

    move-object/from16 v0, p0

    goto :goto_9c

    :cond_f7
    move-object/from16 v24, v27

    move-object/from16 v0, v28

    const/high16 v1, 0x50000000

    .line 3333
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3334
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3336
    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3339
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    move-object/from16 v10, v24

    invoke-virtual {v3, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    .line 3340
    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.MANAGE_USERS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    sget v11, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v12, 0x3e8

    const/4 v15, -0x1

    const/4 v2, 0x0

    move-object v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v13, v16

    move/from16 v14, v17

    invoke-virtual/range {v0 .. v15}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZIIIII)I
    :try_end_132
    .catchall {:try_start_1b .. :try_end_132} :catchall_84

    goto :goto_137

    .line 3347
    :goto_133
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3348
    throw v0

    .line 3347
    :cond_137
    :goto_137
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public setAllowUserUnlocking(Z)V
    .registers 2

    .line 3545
    iput-boolean p1, p0, Lcom/android/server/am/UserController;->mAllowUserUnlocking:Z

    return-void
.end method

.method public setInitialConfig(ZIZI)V
    .registers 6

    .line 520
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 521
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 522
    iput p2, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    .line 523
    iput-boolean p3, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    .line 526
    iput p4, p0, Lcom/android/server/am/UserController;->mBackgroundUserConsideredDispensableTimeSecs:I

    const/4 p1, 0x1

    .line 529
    iput-boolean p1, p0, Lcom/android/server/am/UserController;->mInitialized:Z

    .line 530
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public setStopUserOnSwitch(I)V
    .registers 7

    .line 546
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.MANAGE_USERS"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    .line 547
    invoke-virtual {v0, v2}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_16

    goto :goto_1e

    .line 550
    :cond_16
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "You either need MANAGE_USERS or INTERACT_ACROSS_USERS permission to call setStopUserOnSwitch()"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 555
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_21
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setStopUserOnSwitch(): %d -> %d"

    iget v3, p0, Lcom/android/server/am/UserController;->mStopUserOnSwitch:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    iput p1, p0, Lcom/android/server/am/UserController;->mStopUserOnSwitch:I

    .line 558
    monitor-exit v0

    return-void

    :catchall_3b
    move-exception p0

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_21 .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public setSwitchingFromUserMessage(ILjava/lang/String;)V
    .registers 4

    .line 3969
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3970
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/UserController;->mSwitchingFromUserMessage:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3971
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setSwitchingToUserMessage(ILjava/lang/String;)V
    .registers 4

    .line 3975
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3976
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/UserController;->mSwitchingToUserMessage:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3977
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public shouldConfirmCredentials(I)Z
    .registers 4

    .line 3948
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 3951
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 3952
    invoke-virtual {v0}, Landroid/content/pm/UserProperties;->isCredentialShareableWithParent()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_38

    .line 3955
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 3956
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object p0

    .line 3957
    invoke-virtual {p0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result p0

    if-eqz p0, :cond_31

    const/4 p0, 0x1

    return p0

    :cond_31
    return v1

    :cond_32
    const/4 v0, 0x2

    .line 3960
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result p0

    return p0

    :cond_38
    :goto_38
    return v1
.end method

.method public final shouldStartWithParent(Landroid/content/pm/UserInfo;)Z
    .registers 3

    .line 1933
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 1934
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getStartWithParent()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 1935
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public final showUserSwitchDialog(Landroid/util/Pair;)V
    .registers 9

    .line 2604
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v2, v1

    move-object v1, v2

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/pm/UserInfo;

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 2605
    invoke-virtual {p0, v2}, Lcom/android/server/am/UserController;->getSwitchingFromUserMessageUnchecked(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 2606
    invoke-virtual {p0, v4}, Lcom/android/server/am/UserController;->getSwitchingToUserMessageUnchecked(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/server/am/UserController$$ExternalSyntheticLambda18;

    invoke-direct {v5, p0, p1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/am/UserController;Landroid/util/Pair;)V

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    .line 2604
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController$Injector;->showUserSwitchingDialog(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startProfile(IZLandroid/os/IProgressListener;)Z
    .registers 7

    .line 1957
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.MANAGE_USERS"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1958
    invoke-virtual {v0, v2}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_16

    goto :goto_1e

    .line 1961
    :cond_16
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "You either need MANAGE_USERS or INTERACT_ACROSS_USERS_FULL permission to start a profile"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1966
    :cond_1e
    :goto_1e
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 1967
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1971
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_43

    if-nez p2, :cond_43

    .line 1972
    sget-object p0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Cannot start disabled profile #%d"

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_43
    const/4 p2, 0x3

    .line 1976
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/am/UserController;->startUserNoChecks(IIILandroid/os/IProgressListener;)Z

    move-result p0

    return p0

    .line 1968
    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "User "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a profile"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final startProfiles()V
    .registers 8

    .line 1894
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    .line 1896
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    .line 1898
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1899
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1900
    iget v5, v4, Landroid/content/pm/UserInfo;->flags:I

    const/16 v6, 0x10

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_1c

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-eq v5, v0, :cond_1c

    .line 1902
    invoke-virtual {p0, v4}, Lcom/android/server/am/UserController;->shouldStartWithParent(Landroid/content/pm/UserInfo;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1903
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 1907
    :cond_3d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    :goto_41
    if-ge v2, v1, :cond_52

    .line 1911
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/UserController;->startUser(II)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 1913
    :cond_52
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getMaxRunningUsers()I

    move-result p0

    if-lt v1, p0, :cond_6f

    .line 1915
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    .line 1916
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1915
    const-string v0, "User %d has more profiles to start (%d) than MAX_RUNNING_USERS would allow (%d)"

    invoke-static {v2, v0, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6f
    return-void
.end method

.method public final startTimeoutForOnBeforeUserSwitching(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V
    .registers 10

    .line 2643
    invoke-static {}, Lcom/android/server/am/UserController;->getUserSwitchTimeoutMs()I

    move-result v0

    int-to-long v4, v0

    .line 2644
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda28;

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/am/UserController;Ljava/util/concurrent/atomic/AtomicBoolean;JLjava/lang/Runnable;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startUser(II)Z
    .registers 4

    const/4 v0, 0x0

    .line 1987
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/UserController;->startUser(IILandroid/os/IProgressListener;)Z

    move-result p0

    return p0
.end method

.method public startUser(IILandroid/os/IProgressListener;)Z
    .registers 6

    .line 2026
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v1, "startUser"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserController;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2028
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/am/UserController;->startUserNoChecks(IIILandroid/os/IProgressListener;)Z

    move-result p0

    return p0
.end method

.method public startUserInBackgroundTemporarily(II)Z
    .registers 9

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    .line 1981
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->startUserNoChecks(IIIILandroid/os/IProgressListener;)Z

    move-result p0

    return p0
.end method

.method public startUserInForeground(I)V
    .registers 4

    .line 2436
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->setPerformancePowerMode(Z)V

    .line 2438
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->startUser(II)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 2440
    iget-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p1}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 2441
    new-instance p1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/UserController;)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->dismissUserSwitchDialog(Ljava/lang/Runnable;)V

    :cond_1e
    return-void
.end method

.method public final startUserInternal(IIIILandroid/os/IProgressListener;Lcom/android/server/utils/TimingsTraceAndSlog;)Z
    .registers 25

    move-object/from16 v1, p0

    move/from16 v10, p1

    move/from16 v0, p2

    move/from16 v4, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 2091
    iget-object v5, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2098
    :try_start_f
    iget-boolean v6, v1, Lcom/android/server/am/UserController;->mReady:Z

    const-string v7, "Trying to start user %d before ready"

    .line 2099
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 2098
    invoke-static {v6, v7, v8}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2100
    monitor-exit v5
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_258

    const/4 v11, 0x1

    if-ne v4, v11, :cond_24

    move v12, v11

    goto :goto_25

    :cond_24
    const/4 v12, 0x0

    :goto_25
    if-eqz v0, :cond_29

    move v6, v11

    goto :goto_2a

    :cond_29
    const/4 v6, 0x0

    :goto_2a
    if-eqz v6, :cond_3f

    xor-int/lit8 v7, v12, 0x1

    .line 2105
    const-string v8, "Cannot start user %d in foreground AND on secondary display (%d)"

    .line 2106
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v9, v13}, [Ljava/lang/Object;

    move-result-object v9

    .line 2105
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_3f
    if-lez p4, :cond_5c

    const/4 v7, 0x2

    if-ne v4, v7, :cond_46

    move v7, v11

    goto :goto_47

    :cond_46
    const/4 v7, 0x0

    .line 2109
    :goto_47
    const-string v8, "Cannot auto-stop a non-bg (%d) user %d in %d s"

    .line 2111
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v9, v13, v14}, [Ljava/lang/Object;

    move-result-object v9

    .line 2109
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2113
    :cond_5c
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 2114
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x757c

    .line 2113
    invoke-static {v8, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2116
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2117
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 2118
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 2120
    :try_start_7d
    const-string v7, "getStartedUserState"

    invoke-virtual {v3, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2121
    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v7

    if-ne v7, v10, :cond_b3

    .line 2124
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v15

    if-nez v15, :cond_9b

    .line 2126
    sget-object v15, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    const/16 v16, 0x0

    const-string v5, "Current user has no UserState"

    invoke-static {v15, v5}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5

    :catchall_98
    move-exception v0

    goto/16 :goto_254

    :cond_9b
    const/16 v16, 0x0

    if-nez v10, :cond_a4

    .line 2129
    iget v5, v15, Lcom/android/server/am/UserState;->state:I

    if-nez v5, :cond_a4

    goto :goto_b5

    .line 2133
    :cond_a4
    iget v0, v15, Lcom/android/server/am/UserState;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_ac

    .line 2136
    invoke-static {v10, v2}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V

    .line 2138
    :cond_ac
    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_af
    .catchall {:try_start_7d .. :try_end_af} :catchall_98

    .line 2246
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11

    :cond_b3
    const/16 v16, 0x0

    .line 2143
    :goto_b5
    :try_start_b5
    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v12, :cond_ca

    .line 2146
    const-string v5, "clearAllLockedTasks"

    invoke-virtual {v3, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2147
    iget-object v5, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v15, "startUser"

    invoke-virtual {v5, v15}, Lcom/android/server/am/UserController$Injector;->clearAllLockedTasks(Ljava/lang/String;)V

    .line 2148
    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2151
    :cond_ca
    const-string v5, "getUserInfo"

    invoke-virtual {v3, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2152
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 2153
    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v5, :cond_f2

    .line 2156
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No user info for user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ee
    .catchall {:try_start_b5 .. :try_end_ee} :catchall_98

    .line 2246
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v16

    :cond_f2
    if-eqz v12, :cond_119

    .line 2159
    :try_start_f4
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v15

    if-eqz v15, :cond_119

    .line 2160
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot switch to User #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": not a full user"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_115
    .catchall {:try_start_f4 .. :try_end_115} :catchall_98

    .line 2246
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v16

    :cond_119
    if-nez v12, :cond_11d

    if-eqz v6, :cond_140

    .line 2164
    :cond_11d
    :try_start_11d
    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v6, :cond_140

    .line 2165
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot start pre-created user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in foreground or on secondary display"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13c
    .catchall {:try_start_11d .. :try_end_13c} :catchall_98

    .line 2246
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v16

    .line 2170
    :cond_140
    :try_start_140
    const-string v6, "assignUserToDisplayOnStart"

    invoke-virtual {v3, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2171
    iget-object v6, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v6}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v6

    iget v15, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {v6, v10, v15, v4, v0}, Lcom/android/server/pm/UserManagerInternal;->assignUserToDisplayOnStart(IIII)I

    move-result v6

    .line 2173
    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const/4 v15, -0x1

    if-ne v6, v15, :cond_176

    .line 2176
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    const-string v2, "%s user(%d) / display (%d) assignment failed: %s"

    .line 2177
    invoke-static {v4}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2178
    invoke-static {v6}, Lcom/android/server/pm/UserManagerInternal;->userAssignmentResultToString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v4, v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 2176
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_172
    .catchall {:try_start_140 .. :try_end_172} :catchall_98

    .line 2246
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v16

    .line 2188
    :cond_176
    :try_start_176
    const-string/jumbo v0, "updateStartedUserArrayStarting"

    invoke-virtual {v3, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2189
    iget-object v6, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_17f
    .catchall {:try_start_176 .. :try_end_17f} :catchall_98

    .line 2190
    :try_start_17f
    iget-object v0, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UserState;

    if-nez v0, :cond_1b0

    .line 2192
    new-instance v0, Lcom/android/server/am/UserState;

    invoke-static {v10}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v15

    invoke-direct {v0, v15}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    .line 2193
    iget-object v15, v0, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    move/from16 v17, v11

    new-instance v11, Lcom/android/server/am/UserController$UserProgressListener;

    const/4 v4, 0x0

    invoke-direct {v11, v4}, Lcom/android/server/am/UserController$UserProgressListener;-><init>(Lcom/android/server/am/UserController-IA;)V

    invoke-virtual {v15, v11}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 2194
    iget-object v4, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v10, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2195
    invoke-virtual {v1}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    move v4, v7

    move/from16 v7, v17

    move/from16 v16, v7

    goto :goto_1cb

    :catchall_1ad
    move-exception v0

    goto/16 :goto_252

    :cond_1b0
    move/from16 v17, v11

    .line 2198
    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v11, 0x5

    if-eq v4, v11, :cond_1c3

    iget-object v4, v1, Lcom/android/server/am/UserController;->mDoNotAbortShutdownUserIds:Landroid/util/ArraySet;

    .line 2199
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c8

    :cond_1c3
    move/from16 v4, p3

    move/from16 v5, p4

    goto :goto_225

    :cond_1c8
    move v4, v7

    move/from16 v7, v16

    .line 2208
    :goto_1cb
    monitor-exit v6
    :try_end_1cc
    .catchall {:try_start_17f .. :try_end_1cc} :catchall_1ad

    .line 2212
    :try_start_1cc
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->addUserToUserLru(I)V

    if-eqz v2, :cond_1d6

    .line 2215
    iget-object v6, v0, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v6, v2}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 2217
    :cond_1d6
    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v16, :cond_1ef

    .line 2220
    const-string/jumbo v2, "setUserState"

    invoke-virtual {v3, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2221
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    iget v6, v0, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v2, v10, v6}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 2222
    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_1ef
    if-eqz v12, :cond_201

    .line 2227
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/android/server/am/UserController$Injector;->reportGlobalUsageEvent(I)V

    .line 2228
    iget-object v2, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1fb
    .catchall {:try_start_1cc .. :try_end_1fb} :catchall_98

    .line 2229
    :try_start_1fb
    iput v10, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 2230
    invoke-static {}, Landroid/app/ActivityManager;->invalidateGetCurrentUserIdCache()V

    .line 2231
    monitor-exit v2

    :cond_201
    move-object v6, v0

    goto :goto_206

    :catchall_203
    move-exception v0

    monitor-exit v2
    :try_end_205
    .catchall {:try_start_1fb .. :try_end_205} :catchall_203

    :try_start_205
    throw v0

    .line 2236
    :goto_206
    new-instance v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;

    move v3, v4

    move-object v2, v5

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;IIILcom/android/server/am/UserState;ZII)V

    if-eqz v12, :cond_21e

    .line 2240
    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1, v10, v0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/UserController;ILjava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_221

    .line 2243
    :cond_21e
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_221
    .catchall {:try_start_205 .. :try_end_221} :catchall_98

    .line 2246
    :goto_221
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v17

    .line 2200
    :goto_225
    :try_start_225
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "User #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is shutting down - will start after full shutdown"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    iget-object v0, v1, Lcom/android/server/am/UserController;->mPendingUserStarts:Ljava/util/List;

    new-instance v1, Lcom/android/server/am/UserController$PendingUserStart;

    invoke-direct {v1, v10, v4, v5, v2}, Lcom/android/server/am/UserController$PendingUserStart;-><init>(IIILandroid/os/IProgressListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2205
    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2206
    monitor-exit v6
    :try_end_24e
    .catchall {:try_start_225 .. :try_end_24e} :catchall_1ad

    .line 2246
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v17

    .line 2208
    :goto_252
    :try_start_252
    monitor-exit v6
    :try_end_253
    .catchall {:try_start_252 .. :try_end_253} :catchall_1ad

    :try_start_253
    throw v0
    :try_end_254
    .catchall {:try_start_253 .. :try_end_254} :catchall_98

    .line 2246
    :goto_254
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2247
    throw v0

    :catchall_258
    move-exception v0

    .line 2100
    :try_start_259
    monitor-exit v5
    :try_end_25a
    .catchall {:try_start_259 .. :try_end_25a} :catchall_258

    throw v0
.end method

.method public final startUserNoChecks(IIIILandroid/os/IProgressListener;)Z
    .registers 13

    .line 2073
    new-instance v6, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v6}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 2075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserController.startUser-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2076
    const-string v1, ""

    if-nez p2, :cond_18

    move-object v2, v1

    goto :goto_29

    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-display-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-ne p3, v2, :cond_37

    .line 2077
    const-string v2, "fg"

    goto :goto_39

    :cond_37
    const-string v2, "bg"

    :goto_39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p4, :cond_55

    .line 2078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-for-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-start-mode-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2075
    invoke-virtual {v6, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 2081
    :try_start_6d
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/UserController;->startUserInternal(IIIILandroid/os/IProgressListener;Lcom/android/server/utils/TimingsTraceAndSlog;)Z

    move-result p0
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_75

    .line 2084
    invoke-virtual {v6}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return p0

    :catchall_75
    move-exception v0

    move-object p0, v0

    invoke-virtual {v6}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2085
    throw p0
.end method

.method public final startUserNoChecks(IIILandroid/os/IProgressListener;)Z
    .registers 11

    const/4 v4, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 2067
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->startUserNoChecks(IIIILandroid/os/IProgressListener;)Z

    move-result p0

    return p0
.end method

.method public startUserVisibleOnDisplay(IILandroid/os/IProgressListener;)Z
    .registers 6

    .line 2053
    const-string v0, "android.permission.MANAGE_USERS"

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startUserOnDisplay"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/UserController;->checkCallingHasOneOfThosePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 2057
    :try_start_f
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/am/UserController;->startUserNoChecks(IIILandroid/os/IProgressListener;)Z

    move-result p0
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_13} :catch_14

    return p0

    :catch_14
    move-exception p0

    .line 2060
    sget-object p3, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "startUserOnSecondaryDisplay(%d, %d) failed: %s"

    invoke-static {p3, p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final stopExcessRunningUsers()V
    .registers 2

    const/16 v0, -0x2710

    .line 640
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->stopExcessRunningUsers(I)V

    return-void
.end method

.method public final stopExcessRunningUsers(I)V
    .registers 8

    .line 644
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 645
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const/16 v2, -0x2710

    if-eq p1, v2, :cond_15

    .line 648
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_15
    iget-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object p1

    .line 652
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getVisibleActivityUsers()Landroid/util/ArraySet;

    move-result-object v2

    const/4 v3, 0x0

    .line 653
    :goto_27
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_53

    .line 654
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 655
    invoke-virtual {p0, v4}, Lcom/android/server/am/UserController;->isUserVisible(I)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 656
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 657
    :cond_43
    invoke-virtual {p0, v4, v2}, Lcom/android/server/am/UserController;->avoidStoppingUserRightNow(ILandroid/util/ArraySet;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 658
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_50
    :goto_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 662
    :cond_53
    iget-object p1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 663
    :try_start_56
    iget v2, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/am/UserController;->stopExcessRunningUsersLU(ILandroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 664
    monitor-exit p1

    return-void

    :catchall_5d
    move-exception p0

    monitor-exit p1
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method public final stopExcessRunningUsersLU(ILandroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 13

    .line 679
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 681
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getRunningUsersLU()Ljava/util/List;

    move-result-object v7

    .line 682
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 683
    :cond_11
    :goto_11
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_7c

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 684
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 685
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_11

    .line 686
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-eq v2, v3, :cond_11

    .line 687
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    goto :goto_11

    .line 691
    :cond_38
    invoke-virtual {p3, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 693
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    const-string v3, "Avoiding stopping user %d"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 694
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 699
    :cond_4d
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    .line 700
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 701
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4, v1}, [Ljava/lang/Object;

    move-result-object v3

    .line 699
    const-string v4, "%d too many running users (%d total). Attempting to stop user %d."

    invoke-static {v2, v4, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result v1

    if-nez v1, :cond_11

    .line 710
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    .line 715
    :cond_7c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    :goto_82
    if-lez v1, :cond_aa

    .line 716
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_aa

    .line 717
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 718
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    .line 719
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5, v3}, [Ljava/lang/Object;

    move-result-object v5

    .line 718
    const-string v7, "%d too many running users. Scheduling to later stop user %d."

    invoke-static {v4, v7, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 720
    invoke-virtual {p0, v3}, Lcom/android/server/am/UserController;->rescheduleStopOfBackgroundUser(Ljava/lang/Integer;)Z

    move-result v3

    if-eqz v3, :cond_a7

    add-int/lit8 v1, v1, -0x1

    :cond_a7
    add-int/lit8 v2, v2, 0x1

    goto :goto_82

    :cond_aa
    if-lez v1, :cond_bf

    .line 726
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    .line 728
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 726
    const-string v2, "%d too many running users. We are left in a state exceeding %d running users, but that\'s okay because it is a soft limit."

    invoke-static {v0, v2, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_bf
    return-void
.end method

.method public final stopGuestOrEphemeralUserIfBackground(I)V
    .registers 5

    .line 1842
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1843
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    if-eqz p1, :cond_65

    .line 1844
    iget v2, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-eq p1, v2, :cond_65

    if-eqz v1, :cond_65

    iget v1, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_65

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1c

    goto :goto_65

    .line 1849
    :cond_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_63

    .line 1851
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1852
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1853
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerInternal;->onEphemeralUserStop(I)V

    .line 1855
    :cond_32
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-nez v1, :cond_40

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_3f

    goto :goto_40

    :cond_3f
    return-void

    .line 1857
    :cond_40
    :goto_40
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping background guest or ephemeral user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1859
    :try_start_5b
    invoke-virtual {p0, p1, v0, v2, v2}, Lcom/android/server/am/UserController;->stopUsersLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    .line 1860
    monitor-exit v1

    return-void

    :catchall_60
    move-exception p0

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_60

    throw p0

    :catchall_63
    move-exception p0

    goto :goto_67

    .line 1847
    :cond_65
    :goto_65
    :try_start_65
    monitor-exit v0

    return-void

    .line 1849
    :goto_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_63

    throw p0
.end method

.method public final stopPackagesOfStoppedUser(ILjava/lang/String;)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1810
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v3, 0x1

    move-object/from16 v4, p2

    invoke-virtual {v2, v1, v4, v3}, Lcom/android/server/am/UserController$Injector;->activityManagerForceStopUserPackages(ILjava/lang/String;Z)V

    .line 1812
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_65

    .line 1816
    :cond_19
    new-instance v4, Landroid/content/Intent;

    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x50000000

    .line 1817
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1819
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1820
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v14, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1822
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 1823
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    const/16 v18, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v15, 0x3e8

    .line 1820
    invoke-virtual/range {v3 .. v18}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZIIIII)I

    .line 1826
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 1827
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 1828
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 1830
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    const-string v3, "android.intent.action.PROFILE_INACCESSIBLE"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController;->broadcastProfileAccessibleStateChanged(IILjava/lang/String;)V

    :cond_65
    :goto_65
    return-void
.end method

.method public final stopPreviousUserPackagesIfEnabled(II)V
    .registers 5

    .line 1866
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->isEarlyPackageKillEnabledForUserSwitch(II)Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    .line 1872
    :cond_7
    iget-object p2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1873
    :try_start_a
    iget-object v0, p0, Lcom/android/server/am/UserController;->mDoNotAbortShutdownUserIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1874
    monitor-exit p2
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1d

    .line 1875
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string p2, "early stop user packages"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/UserController$Injector;->activityManagerForceStopUserPackages(ILjava/lang/String;Z)V

    return-void

    :catchall_1d
    move-exception p0

    .line 1874
    :try_start_1e
    monitor-exit p2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public stopProfile(I)Z
    .registers 5

    .line 1229
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.MANAGE_USERS"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1230
    invoke-virtual {v0, v2}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_16

    goto :goto_1e

    .line 1233
    :cond_16
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "You either need MANAGE_USERS or INTERACT_ACROSS_USERS_FULL permission to stop a profile"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1238
    :cond_1e
    :goto_1e
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 1239
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1243
    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/UserController;->enforceShellRestriction(Ljava/lang/String;I)V

    .line 1244
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1245
    :try_start_35
    invoke-virtual {p0, p1, v2, v1, v1}, Lcom/android/server/am/UserController;->stopUsersLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result p0

    if-nez p0, :cond_3c

    const/4 v2, 0x1

    :cond_3c
    monitor-exit v0

    return v2

    :catchall_3e
    move-exception p0

    .line 1248
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_3e

    throw p0

    .line 1240
    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a profile"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final stopSingleUserLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)V
    .registers 9

    .line 1368
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopSingleUserLU userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController;->clearAnyPlansForStoppingBackgroundUser(Ljava/lang/Integer;)V

    .line 1370
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    if-nez v1, :cond_77

    .line 1379
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->canDelayDataLockingForUser(I)Z

    move-result v1

    if-eqz v1, :cond_6a

    if-eqz p2, :cond_4c

    if-eqz p4, :cond_4c

    .line 1381
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allowDelayedLocking set with KeyEvictedCallback, ignore it and lock user:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, p2, v1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x0

    :cond_4c
    if-nez p2, :cond_6a

    .line 1386
    iget-object p2, p0, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6a

    if-eqz p4, :cond_66

    .line 1390
    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1391
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_67

    :cond_66
    const/4 p2, 0x0

    .line 1395
    :goto_67
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->dispatchUserLocking(ILjava/util/List;)V

    :cond_6a
    if-eqz p3, :cond_100

    .line 1401
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/am/UserController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p3, p1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda0;-><init>(Landroid/app/IStopUserCallback;I)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_77
    const/4 v0, 0x5

    .line 1411
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController;->logUserJourneyBegin(II)V

    if-eqz p3, :cond_82

    .line 1414
    iget-object v2, v1, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_82
    if-eqz p4, :cond_89

    .line 1417
    iget-object p3, v1, Lcom/android/server/am/UserState;->mKeyEvictedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1420
    :cond_89
    iget p3, v1, Lcom/android/server/am/UserState;->state:I

    const/4 p4, 0x4

    if-eq p3, p4, :cond_100

    if-eq p3, v0, :cond_100

    .line 1422
    invoke-virtual {v1, p4}, Lcom/android/server/am/UserState;->setState(I)V

    .line 1423
    iget-object p3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p3}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p3

    .line 1424
    new-instance p4, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {p4}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 1425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserState-STATE_STOPPING-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-[stopUser]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1426
    iget v0, v1, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {p3, p1, v0}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 1427
    invoke-virtual {p4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unassignUserFromDisplayOnStop-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1429
    invoke-virtual {p3, p1}, Lcom/android/server/pm/UserManagerInternal;->unassignUserFromDisplayOnStop(I)V

    .line 1430
    invoke-virtual {p4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1432
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 1435
    new-instance p3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1, v1, p2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;Z)V

    .line 1443
    iget-object p2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    move-result p2

    if-eqz p2, :cond_f6

    .line 1444
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1449
    :cond_f6
    iget-object p2, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance p4, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;

    invoke-direct {p4, p0, p1, p3}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/UserController;ILjava/lang/Runnable;)V

    invoke-virtual {p2, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_100
    return-void
.end method

.method public stopUser(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I
    .registers 11

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1253
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->stopUser(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result p0

    return p0
.end method

.method public stopUser(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I
    .registers 10

    .line 1259
    new-instance v1, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 1261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserController"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_14

    .line 1262
    const-string v2, "-stopProfileRegardlessOfParent"

    goto :goto_16

    :cond_14
    const-string v2, ""

    :goto_16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1e

    .line 1263
    const-string v2, "-allowDelayedLocking"

    goto :goto_20

    :cond_1e
    const-string v2, ""

    :goto_20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_28

    .line 1264
    const-string v2, "-withStopUserCallback"

    goto :goto_2a

    :cond_28
    const-string v2, ""

    :goto_2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-[stopUser]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1261
    invoke-virtual {v1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1267
    :try_start_41
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v2, "stopUser"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/UserController;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_4d

    const/4 v0, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    .line 1268
    :goto_4e
    const-string v2, "Invalid user id %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1270
    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/UserController;->enforceShellRestriction(Ljava/lang/String;I)V

    .line 1271
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_64
    .catchall {:try_start_41 .. :try_end_64} :catchall_71

    .line 1272
    :try_start_64
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result p0

    monitor-exit v2
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_6d

    .line 1276
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return p0

    :catchall_6d
    move-exception v0

    move-object p0, v0

    .line 1274
    :try_start_6f
    monitor-exit v2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6d

    :try_start_70
    throw p0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_71

    :catchall_71
    move-exception v0

    move-object p0, v0

    .line 1276
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1277
    throw p0
.end method

.method public final stopUserOnSwitchIfEnforced(I)V
    .registers 11

    if-nez p1, :cond_3

    goto :goto_5f

    .line 2728
    :cond_3
    const-string/jumbo v0, "no_run_in_background"

    .line 2729
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    .line 2730
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_15

    .line 2732
    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->isStopUserOnSwitchEnabled()Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_15
    move-object v3, p0

    goto :goto_63

    .line 2737
    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_60

    .line 2740
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object p1

    .line 2742
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_27
    if-ge v1, v0, :cond_5f

    .line 2744
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    .line 2745
    const-string/jumbo v2, "no_run_in_background"

    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 2746
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    const-string v3, "Stopping profile %d on user switch"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2747
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    .line 2748
    :try_start_51
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    .line 2751
    monitor-exit v2

    goto :goto_5b

    :catchall_56
    move-exception v0

    move-object p0, v0

    monitor-exit v2
    :try_end_59
    .catchall {:try_start_51 .. :try_end_59} :catchall_56

    throw p0

    :cond_5a
    move-object v3, p0

    :goto_5b
    add-int/lit8 v1, v1, 0x1

    move-object p0, v3

    goto :goto_27

    :cond_5f
    :goto_5f
    return-void

    :catchall_60
    move-exception v0

    move-object p0, v0

    goto :goto_7a

    .line 2733
    :goto_63
    :try_start_63
    sget-object p0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    const-string v2, "Stopping user %d and its profiles on user switch"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v2, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    xor-int/lit8 p0, v0, 0x1

    const/4 v0, 0x0

    .line 2734
    invoke-virtual {v3, p1, p0, v0, v0}, Lcom/android/server/am/UserController;->stopUsersLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    .line 2735
    monitor-exit v1

    return-void

    .line 2737
    :goto_7a
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_63 .. :try_end_7b} :catchall_60

    throw p0
.end method

.method public final stopUsersLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I
    .registers 11

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1284
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result p0

    return p0
.end method

.method public final stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I
    .registers 13

    if-nez p1, :cond_4

    const/4 p0, -0x3

    return p0

    .line 1302
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->isCurrentUserLU(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, -0x2

    return p0

    :cond_c
    const/4 v0, -0x4

    if-nez p2, :cond_22

    .line 1306
    iget-object p2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v1, -0x2710

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v1, :cond_22

    if-eq p2, p1, :cond_22

    .line 1310
    invoke-virtual {p0, p2}, Lcom/android/server/am/UserController;->isCurrentUserLU(I)Z

    move-result p2

    if-eqz p2, :cond_22

    return v0

    .line 1315
    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUsersToStopLU(I)[I

    move-result-object p2

    .line 1319
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_29
    if-ge v3, v1, :cond_4d

    aget v4, p2, v3

    if-eqz v4, :cond_39

    .line 1320
    invoke-virtual {p0, v4}, Lcom/android/server/am/UserController;->isCurrentUserLU(I)Z

    move-result v5

    if-eqz v5, :cond_36

    goto :goto_39

    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 1321
    :cond_39
    :goto_39
    sget-object p0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    .line 1322
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 1321
    const-string p2, "Cannot stop user %d because it is related to user %d. "

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 1327
    :cond_4d
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 1329
    array-length v1, p2

    move v3, v2

    :goto_54
    if-ge v3, v1, :cond_84

    aget v4, p2, v3

    .line 1330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopSingleUserLU-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-[stopUser]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const/4 v5, 0x0

    if-ne v4, p1, :cond_77

    move-object v6, p4

    goto :goto_78

    :cond_77
    move-object v6, v5

    :goto_78
    if-ne v4, p1, :cond_7b

    move-object v5, p5

    .line 1331
    :cond_7b
    invoke-virtual {p0, v4, p3, v6, v5}, Lcom/android/server/am/UserController;->stopSingleUserLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)V

    .line 1334
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    :cond_84
    return v2
.end method

.method public switchUser(I)Z
    .registers 9

    .line 2541
    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/UserController;->enforceShellRestriction(Ljava/lang/String;I)V

    const/16 v0, 0x757b

    .line 2542
    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2543
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    .line 2544
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 2546
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/16 v3, -0x2710

    const/4 v4, 0x1

    if-ne p1, v0, :cond_4a

    .line 2547
    :try_start_1b
    iget v5, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    if-ne v5, v3, :cond_4a

    .line 2548
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is already the current user"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    iget-object p1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/UserController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2550
    monitor-exit v2

    return v4

    :catchall_47
    move-exception p0

    goto/16 :goto_12a

    :cond_4a
    const/4 v5, 0x0

    if-nez v1, :cond_65

    .line 2553
    sget-object p0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No user info for user #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    monitor-exit v2

    return v5

    .line 2556
    :cond_65
    iget-object v6, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v6, v1}, Lcom/android/server/am/UserController$Injector;->doesUserSupportSwitchTo(Landroid/content/pm/UserInfo;)Z

    move-result v6

    if-nez v6, :cond_8a

    .line 2557
    sget-object p0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot switch to User #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": not supported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    monitor-exit v2

    return v5

    .line 2560
    :cond_8a
    invoke-static {}, Lcom/android/server/FactoryResetter;->isFactoryResetting()Z

    move-result v6

    if-eqz v6, :cond_ad

    .line 2561
    sget-object p0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot switch to User #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": factory reset in progress"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    monitor-exit v2

    return v5

    .line 2566
    :cond_ad
    iget-boolean v6, p0, Lcom/android/server/am/UserController;->mInitialized:Z

    if-nez v6, :cond_ce

    .line 2567
    sget-object p0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot switch to User #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": UserController not ready yet"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    monitor-exit v2

    return v5

    .line 2571
    :cond_ce
    iget v5, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    if-eq v5, v3, :cond_102

    .line 2572
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is already an ongoing user switch to User #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". User #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " will be added to the queue."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    iget-object p0, p0, Lcom/android/server/am/UserController;->mPendingTargetUserIds:Ljava/util/ArrayDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 2575
    monitor-exit v2

    return v4

    .line 2577
    :cond_102
    iput p1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 2578
    invoke-static {}, Landroid/app/ActivityManager;->invalidateGetCurrentUserIdCache()V

    .line 2579
    iget-boolean v3, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 2580
    monitor-exit v2
    :try_end_10a
    .catchall {:try_start_1b .. :try_end_10a} :catchall_47

    if-eqz v3, :cond_126

    .line 2582
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 2583
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2584
    iget-object p1, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2585
    iget-object p0, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_129

    .line 2588
    :cond_126
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->sendStartUserSwitchFgMessage(I)V

    :goto_129
    return v4

    .line 2580
    :goto_12a
    :try_start_12a
    monitor-exit v2
    :try_end_12b
    .catchall {:try_start_12a .. :try_end_12b} :catchall_47

    throw p0
.end method

.method public final timeoutUserSwitch(Lcom/android/server/am/UserState;II)V
    .registers 9

    .line 3085
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 3086
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timeoutUserSwitch-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-to-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3087
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3088
    :try_start_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User switch timeout: from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    iput-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 3090
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x5a

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3091
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V

    .line 3093
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0x1388

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3095
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_27 .. :try_end_5d} :catchall_61

    .line 3096
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_61
    move-exception p0

    .line 3095
    :try_start_62
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw p0
.end method

.method public final timeoutUserSwitchCallbacks(II)V
    .registers 7

    .line 3100
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3101
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 3102
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User switch timeout: from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Observers that didn\'t respond: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 3104
    iput-object p1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    goto :goto_3b

    :catchall_39
    move-exception p0

    goto :goto_3d

    .line 3106
    :cond_3b
    :goto_3b
    monitor-exit v0

    return-void

    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_39

    throw p0
.end method

.method public unlockUser(ILandroid/os/IProgressListener;)Z
    .registers 5

    .line 2446
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v1, "unlockUser"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserController;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x757d

    .line 2447
    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2448
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2450
    :try_start_11
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->maybeUnlockUser(ILandroid/os/IProgressListener;)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_19

    .line 2452
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2453
    throw p0
.end method

.method public unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .registers 2

    .line 3506
    iget-object p0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public unsafeConvertIncomingUser(I)I
    .registers 3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_8

    const/4 v0, -0x3

    if-ne p1, v0, :cond_7

    goto :goto_8

    :cond_7
    return p1

    .line 3484
    :cond_8
    :goto_8
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result p0

    return p0
.end method

.method public final updateProfileRelatedCaches()V
    .registers 7

    .line 3619
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    .line 3621
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [I

    move v4, v2

    :goto_16
    if-ge v4, v1, :cond_25

    .line 3623
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 3625
    :cond_25
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 3626
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3627
    :try_start_32
    iput-object v3, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 3629
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 3630
    :goto_39
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_58

    .line 3631
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 3632
    iget v4, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v5, -0x2710

    if-eq v4, v5, :cond_55

    .line 3633
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_55

    :catchall_53
    move-exception p0

    goto :goto_5a

    :cond_55
    :goto_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 3636
    :cond_58
    monitor-exit v1

    return-void

    :goto_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_32 .. :try_end_5b} :catchall_53

    throw p0
.end method

.method public final updateStartedUserArrayLU()V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 3524
    :goto_3
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    if-ge v1, v3, :cond_20

    .line 3525
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 3527
    iget v3, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v3, v5, :cond_1d

    if-eq v3, v4, :cond_1d

    add-int/lit8 v2, v2, 0x1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3532
    :cond_20
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    move v1, v0

    .line 3534
    :goto_25
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_4b

    .line 3535
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    .line 3536
    iget v2, v2, Lcom/android/server/am/UserState;->state:I

    if-eq v2, v5, :cond_48

    if-eq v2, v4, :cond_48

    .line 3538
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    add-int/lit8 v3, v1, 0x1

    iget-object v6, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    aput v6, v2, v1

    move v1, v3

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_4b
    return-void
.end method

.method public final updateUserToLockLU(Landroid/content/pm/UserInfo;Z)I
    .registers 6

    .line 1721
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    .line 1722
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->canDelayDataLockingForUser(I)Z

    move-result v1

    if-eqz v1, :cond_9b

    if-eqz p2, :cond_9b

    .line 1724
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result p1

    if-nez p1, :cond_9b

    const-string/jumbo p1, "no_run_in_background"

    .line 1725
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto/16 :goto_9b

    .line 1732
    :cond_1b
    iget-boolean p1, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    const-string p2, "finishUserStopped: should stop user "

    if-eqz p1, :cond_7f

    .line 1734
    iget-object p1, p0, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1735
    iget-object p1, p0, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1736
    iget-object p1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    iget-object v1, p0, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    .line 1737
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr p1, v1

    .line 1743
    iget v1, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    if-le p1, v1, :cond_7f

    .line 1744
    iget-object p1, p0, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    .line 1745
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1744
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1746
    iget-object p0, p0, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    .line 1747
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1748
    sget-object p0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " but should lock user "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 1753
    :cond_7f
    sget-object p0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " but without any locking"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x2710

    return p0

    :cond_9b
    :goto_9b
    return v0
.end method
