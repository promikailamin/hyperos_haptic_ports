.class Lcom/android/server/am/UserController;
.super Ljava/lang/Object;
.source "UserController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UserController$Injector;,
        Lcom/android/server/am/UserController$UserProgressListener;,
        Lcom/android/server/am/UserController$UserJourneySession;,
        Lcom/android/server/am/UserController$UserLifecycleEventState;,
        Lcom/android/server/am/UserController$UserLifecycleEvent;,
        Lcom/android/server/am/UserController$UserJourney;
    }
.end annotation


# static fields
.field static final CLEAR_USER_JOURNEY_SESSION_MSG:I = 0xc8

.field static final COMPLETE_USER_SWITCH_MSG:I = 0x82

.field static final CONTINUE_USER_SWITCH_MSG:I = 0x14

.field static final FOREGROUND_PROFILE_CHANGED_MSG:I = 0x46

.field private static final INVALID_SESSION_ID:J = 0x0L

.field private static final LONG_USER_SWITCH_OBSERVER_WARNING_TIME_MS:I = 0x1f4

.field static final REPORT_LOCKED_BOOT_COMPLETE_MSG:I = 0x6e

.field static final REPORT_USER_SWITCH_COMPLETE_MSG:I = 0x50

.field static final REPORT_USER_SWITCH_MSG:I = 0xa

.field static final START_PROFILES_MSG:I = 0x28

.field static final START_USER_SWITCH_FG_MSG:I = 0x78

.field static final START_USER_SWITCH_UI_MSG:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final USER_COMPLETED_EVENT_DELAY_MS:I = 0x1388

.field static final USER_COMPLETED_EVENT_MSG:I = 0x8c

.field static final USER_CURRENT_MSG:I = 0x3c

.field private static final USER_JOURNEY_TIMEOUT_MS:I = 0x15f90

.field private static final USER_JOURNEY_UNKNOWN:I = 0x0

.field private static final USER_JOURNEY_USER_CREATE:I = 0x4

.field private static final USER_JOURNEY_USER_START:I = 0x3

.field private static final USER_JOURNEY_USER_STOP:I = 0x5

.field private static final USER_JOURNEY_USER_SWITCH_FG:I = 0x2

.field private static final USER_JOURNEY_USER_SWITCH_UI:I = 0x1

.field private static final USER_LIFECYCLE_EVENT_CREATE_USER:I = 0x3

.field private static final USER_LIFECYCLE_EVENT_START_USER:I = 0x2

.field private static final USER_LIFECYCLE_EVENT_STATE_BEGIN:I = 0x1

.field private static final USER_LIFECYCLE_EVENT_STATE_FINISH:I = 0x2

.field private static final USER_LIFECYCLE_EVENT_STATE_NONE:I = 0x0

.field private static final USER_LIFECYCLE_EVENT_STOP_USER:I = 0x7

.field private static final USER_LIFECYCLE_EVENT_SWITCH_USER:I = 0x1

.field private static final USER_LIFECYCLE_EVENT_UNKNOWN:I = 0x0

.field private static final USER_LIFECYCLE_EVENT_UNLOCKED_USER:I = 0x6

.field private static final USER_LIFECYCLE_EVENT_UNLOCKING_USER:I = 0x5

.field private static final USER_LIFECYCLE_EVENT_USER_RUNNING_LOCKED:I = 0x4

.field static final USER_START_MSG:I = 0x32

.field private static final USER_SWITCH_CALLBACKS_TIMEOUT_MS:I = 0x1388

.field static final USER_SWITCH_CALLBACKS_TIMEOUT_MSG:I = 0x5a

.field static final USER_SWITCH_TIMEOUT_MS:I = 0xbb8

.field static final USER_SWITCH_TIMEOUT_MSG:I = 0x1e

.field static final USER_UNLOCKED_MSG:I = 0x69

.field static final USER_UNLOCK_MSG:I = 0x64


# instance fields
.field volatile mBootCompleted:Z

.field private final mCompletedEventTypes:Landroid/util/SparseIntArray;

.field private volatile mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentProfileIds:[I

.field private volatile mCurrentUserId:I

.field private mDelayUserDataLocking:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private final mInjector:Lcom/android/server/am/UserController$Injector;

.field private final mLastActiveUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mLastUserUnlockingUptime:J

.field private final mLock:Ljava/lang/Object;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMaxRunningUsers:I

.field private mStartedUserArray:[I

.field private final mStartedUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field private mStopUserOnSwitch:I

.field private mSwitchingFromSystemUserMessage:Ljava/lang/String;

.field private mSwitchingToSystemUserMessage:Ljava/lang/String;

.field private volatile mTargetUserId:I

.field private mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;

.field private final mUserIdToUserJourneyMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/UserController$UserJourneySession;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserLru:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserProfileGroupIds:Landroid/util/SparseIntArray;

.field private final mUserSwitchObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IUserSwitchObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mUserSwitchUiEnabled:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurWaitingUserSwitchCallbacks(Lcom/android/server/am/UserController;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/am/UserController;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/am/UserController;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msendContinueUserSwitchLU(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 416
    new-instance v0, Lcom/android/server/am/UserController$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/am/UserController$Injector;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;-><init>(Lcom/android/server/am/UserController$Injector;)V

    .line 417
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/UserController$Injector;)V
    .registers 9
    .param p1, "injector"    # Lcom/android/server/am/UserController$Injector;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 290
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 294
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 300
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 306
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 312
    const/4 v3, 0x1

    new-array v4, v3, [I

    aput v0, v4, v0

    iput-object v4, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 317
    new-array v4, v0, [I

    iput-object v4, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 323
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 329
    new-instance v4, Landroid/os/RemoteCallbackList;

    invoke-direct {v4}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 332
    iput-boolean v3, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 377
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    .line 384
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    .line 391
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    .line 409
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/am/UserController;->mStopUserOnSwitch:I

    .line 413
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/am/UserController;->mLastUserUnlockingUptime:J

    .line 421
    iput-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 423
    invoke-virtual {p1, p0}, Lcom/android/server/am/UserController$Injector;->getHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 424
    invoke-virtual {p1, p0}, Lcom/android/server/am/UserController$Injector;->getUiHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    .line 426
    new-instance v3, Lcom/android/server/am/UserState;

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-direct {v3, v4}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    .line 427
    .local v3, "uss":Lcom/android/server/am/UserState;
    iget-object v4, v3, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    new-instance v5, Lcom/android/server/am/UserController$UserProgressListener;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/am/UserController$UserProgressListener;-><init>(Lcom/android/server/am/UserController$UserProgressListener-IA;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 428
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 429
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-virtual {p1}, Lcom/android/server/am/UserController$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 431
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 432
    return-void
.end method

.method private broadcastProfileAccessibleStateChanged(IILjava/lang/String;)V
    .registers 23
    .param p1, "userId"    # I
    .param p2, "parentId"    # I
    .param p3, "intentAction"    # Ljava/lang/String;

    move/from16 v16, p2

    .line 2203
    new-instance v0, Landroid/content/Intent;

    move-object/from16 v13, p3

    invoke-direct {v0, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .local v11, "intent":Landroid/content/Intent;
    move-object v1, v11

    .line 2204
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {v11, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2205
    const/high16 v0, 0x50000000

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2207
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v12, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 2211
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    .line 2207
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v17, 0x0

    move/from16 v10, v17

    move-object/from16 v18, v11

    .end local v11    # "intent":Landroid/content/Intent;
    .local v18, "intent":Landroid/content/Intent;
    move/from16 v11, v17

    const/16 v17, 0x3e8

    move/from16 v13, v17

    invoke-virtual/range {v0 .. v16}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 2212
    return-void
.end method

.method private canInteractWithAcrossProfilesPermission(IZIILjava/lang/String;)Z
    .registers 8
    .param p1, "allowMode"    # I
    .param p2, "isSameProfileGroup"    # Z
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;

    .line 2313
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_5

    .line 2314
    return v0

    .line 2316
    :cond_5
    if-nez p2, :cond_8

    .line 2317
    return v0

    .line 2319
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-virtual {v0, v1, p3, p4, p5}, Lcom/android/server/am/UserController$Injector;->checkPermissionForPreflight(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;

    .line 2611
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 2620
    return-void

    .line 2613
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2614
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2615
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2617
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkGetCurrentUserPermissions()V
    .registers 4

    .line 2506
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 2508
    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_4f

    .line 2510
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: getCurrentUser() from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2511
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2512
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " requires "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2514
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2517
    .end local v0    # "msg":Ljava/lang/String;
    :cond_4f
    :goto_4f
    return-void
.end method

.method private checkHasManageUsersPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "operation"    # Ljava/lang/String;

    .line 2752
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.MANAGE_USERS"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 2757
    return-void

    .line 2754
    :cond_c
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearSessionId(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 3127
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3128
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3129
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 3130
    monitor-exit v0

    .line 3131
    return-void

    .line 3130
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private clearSessionId(II)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "journey"    # I

    .line 3115
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3116
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserController$UserJourneySession;

    .line 3117
    .local v1, "userJourneySession":Lcom/android/server/am/UserController$UserJourneySession;
    if-eqz v1, :cond_14

    iget v2, v1, Lcom/android/server/am/UserController$UserJourneySession;->mJourney:I

    if-ne v2, p2, :cond_14

    .line 3118
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->clearSessionId(I)V

    .line 3120
    .end local v1    # "userJourneySession":Lcom/android/server/am/UserController$UserJourneySession;
    :cond_14
    monitor-exit v0

    .line 3121
    return-void

    .line 3120
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private dispatchForegroundProfileChanged(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1906
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1907
    .local v0, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 1909
    :try_start_9
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IUserSwitchObserver;

    invoke-interface {v2, p1}, Landroid/app/IUserSwitchObserver;->onForegroundProfileSwitch(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    .line 1912
    goto :goto_16

    .line 1910
    :catch_15
    move-exception v2

    .line 1907
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1914
    .end local v1    # "i":I
    :cond_19
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1915
    return-void
.end method

.method private dispatchLockedBootComplete(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1932
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1933
    .local v0, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 1935
    :try_start_9
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IUserSwitchObserver;

    invoke-interface {v2, p1}, Landroid/app/IUserSwitchObserver;->onLockedBootComplete(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    .line 1938
    goto :goto_16

    .line 1936
    :catch_15
    move-exception v2

    .line 1933
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1940
    .end local v1    # "i":I
    :cond_19
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1941
    return-void
.end method

.method private dispatchUserLocking(ILjava/util/List;)V
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/server/am/UserState$KeyEvictedCallback;",
            ">;)V"
        }
    .end annotation

    .line 1227
    .local p2, "keyEvictedCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/UserState$KeyEvictedCallback;>;"
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/am/UserController;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1246
    return-void
.end method

.method private enforceShellRestriction(Ljava/lang/String;I)V
    .registers 6
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2623
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_2a

    .line 2624
    if-ltz p2, :cond_11

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_2a

    .line 2625
    :cond_11
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shell does not have permission to access user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2629
    :cond_2a
    :goto_2a
    return-void
.end method

.method private finishUserBoot(Lcom/android/server/am/UserState;)V
    .registers 3
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .line 551
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    .line 552
    return-void
.end method

.method private finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V
    .registers 14
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "resultTo"    # Landroid/content/IIntentReceiver;

    .line 555
    iget-object v0, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 556
    .local v0, "userId":I
    const/16 v1, 0x757e

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 558
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 560
    :try_start_e
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_18

    .line 561
    monitor-exit v1

    return-void

    .line 563
    :cond_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_145

    .line 569
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_bf

    .line 570
    invoke-direct {p0, v0, v4, v1}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 572
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v3

    iget v5, p1, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v3, v0, v5}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 574
    const/16 v3, 0x6e

    if-nez v0, :cond_5a

    iget v5, p1, Lcom/android/server/am/UserState;->state:I

    if-ne v5, v2, :cond_5a

    .line 575
    invoke-virtual {p0, v3}, Lcom/android/server/am/UserController;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 576
    invoke-virtual {p0, v3}, Lcom/android/server/am/UserController;->switchUser(I)Z

    move-result v2

    .line 577
    .local v2, "result":Z
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Switch maintenance mode state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    .end local v2    # "result":Z
    :cond_5a
    if-nez v0, :cond_99

    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 582
    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->isRuntimeRestarted()Z

    move-result v2

    if-nez v2, :cond_99

    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->isFirstBootOrUpgrade()Z

    move-result v2

    if-nez v2, :cond_99

    .line 583
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 584
    .local v5, "elapsedTimeMs":J
    const/16 v2, 0xf0

    const/16 v7, 0xc

    invoke-static {v2, v7, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 587
    const-wide/32 v7, 0x1d4c0

    .line 588
    .local v7, "maxElapsedTimeMs":J
    const-wide/32 v9, 0x1d4c0

    cmp-long v2, v5, v9

    if-lez v2, :cond_99

    .line 589
    const-string v2, "SystemServerTiming"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "finishUserBoot took too long. elapsedTimeMs="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    .end local v5    # "elapsedTimeMs":J
    .end local v7    # "maxElapsedTimeMs":J
    :cond_99
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    move-result v2

    if-nez v2, :cond_bf

    .line 595
    iget-object v2, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 599
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v1

    if-eqz v1, :cond_bc

    iget-object v1, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->isSystem()Z

    move-result v1

    if-nez v1, :cond_bf

    .line 601
    :cond_bc
    invoke-direct {p0, p2, v0}, Lcom/android/server/am/UserController;->sendLockedBootCompletedBroadcast(Landroid/content/IIntentReceiver;I)V

    .line 608
    :cond_bf
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerService;->isProfile(I)Z

    move-result v1

    if-eqz v1, :cond_141

    .line 609
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 610
    .local v1, "parent":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_10d

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    .line 611
    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v2

    if-eqz v2, :cond_10d

    .line 612
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (parent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): attempting unlock because parent is unlocked"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    goto :goto_140

    .line 616
    :cond_10d
    if-nez v1, :cond_112

    const-string v2, "<null>"

    goto :goto_118

    :cond_112
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 617
    .local v2, "parentId":Ljava/lang/String;
    :goto_118
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (parent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): delaying unlock because parent is locked"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    .end local v1    # "parent":Landroid/content/pm/UserInfo;
    .end local v2    # "parentId":Ljava/lang/String;
    :goto_140
    goto :goto_144

    .line 621
    :cond_141
    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    .line 623
    :goto_144
    return-void

    .line 563
    :catchall_145
    move-exception v2

    :try_start_146
    monitor-exit v1
    :try_end_147
    .catchall {:try_start_146 .. :try_end_147} :catchall_145

    throw v2
.end method

.method private finishUserStopping(ILcom/android/server/am/UserState;Z)V
    .registers 23
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;
    .param p3, "allowDelayedLocking"    # Z

    .line 1101
    move-object/from16 v1, p0

    move/from16 v15, p1

    move-object/from16 v14, p2

    const/16 v0, 0x7579

    invoke-static {v0, v15}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1102
    iget-object v2, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1103
    :try_start_e
    iget v0, v14, Lcom/android/server/am/UserState;->state:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1d

    .line 1105
    const/4 v0, 0x7

    const/4 v3, 0x0

    invoke-direct {v1, v15, v0, v3}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 1107
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/UserController;->clearSessionId(I)V

    .line 1108
    monitor-exit v2

    return-void

    .line 1110
    :cond_1d
    const/4 v0, 0x5

    invoke-virtual {v14, v0}, Lcom/android/server/am/UserState;->setState(I)V

    .line 1111
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_88

    .line 1112
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    iget v2, v14, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, v15, v2}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 1114
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v2, 0x4007

    .line 1116
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1114
    invoke-virtual {v0, v2, v3, v15}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 1117
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/android/server/SystemServiceManager;->onUserStopping(I)V

    .line 1119
    new-instance v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;

    move/from16 v13, p3

    invoke-direct {v0, v1, v14, v13}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;Z)V

    .line 1121
    .local v0, "finishUserStoppedAsync":Ljava/lang/Runnable;
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1122
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1123
    return-void

    .line 1127
    :cond_58
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1129
    .local v3, "shutdownIntent":Landroid/content/Intent;
    new-instance v5, Lcom/android/server/am/UserController$5;

    invoke-direct {v5, v1, v0}, Lcom/android/server/am/UserController$5;-><init>(Lcom/android/server/am/UserController;Ljava/lang/Runnable;)V

    .line 1136
    .local v5, "shutdownReceiver":Landroid/content/IIntentReceiver;
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/16 v16, 0x0

    move/from16 v13, v16

    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move/from16 v14, v16

    const/16 v16, 0x3e8

    move/from16 v15, v16

    .line 1139
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 1140
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    .line 1136
    move/from16 v18, p1

    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 1141
    return-void

    .line 1111
    .end local v0    # "finishUserStoppedAsync":Ljava/lang/Runnable;
    .end local v3    # "shutdownIntent":Landroid/content/Intent;
    .end local v5    # "shutdownReceiver":Landroid/content/IIntentReceiver;
    :catchall_88
    move-exception v0

    :try_start_89
    monitor-exit v2
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw v0
.end method

.method private finishUserUnlocked(Lcom/android/server/am/UserState;)V
    .registers 39
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .line 698
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    .line 699
    .local v15, "userId":I
    const/16 v0, 0x7577

    invoke-static {v0, v15}, Landroid/util/EventLog;->writeEvent(II)I

    .line 701
    invoke-static {v15}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    .line 702
    :cond_16
    iget-object v3, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 704
    :try_start_19
    iget-object v0, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    iget-object v4, v2, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_13f

    if-eq v0, v2, :cond_2d

    :try_start_27
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_29

    return-void

    .line 710
    :catchall_29
    move-exception v0

    move v4, v15

    goto/16 :goto_141

    .line 707
    :cond_2d
    const/4 v0, 0x2

    const/4 v4, 0x3

    :try_start_2f
    invoke-virtual {v2, v0, v4}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v0
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_13f

    if-nez v0, :cond_37

    .line 708
    :try_start_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_29

    return-void

    .line 710
    :cond_37
    :try_start_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_13f

    .line 711
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    iget v3, v2, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, v15, v3}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 712
    iget-object v0, v2, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v0}, Lcom/android/internal/util/ProgressReporter;->finish()V

    .line 718
    if-eqz v15, :cond_4e

    const/16 v0, 0x6e

    if-ne v15, v0, :cond_5c

    .line 720
    :cond_4e
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/high16 v3, 0x40000

    invoke-virtual {v0, v3}, Lcom/android/server/am/UserController$Injector;->startPersistentApps(I)V

    .line 722
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceStub;->get()Lcom/android/server/am/ActivityManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerServiceStub;->reportBootEvent()V

    .line 728
    :cond_5c
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0, v15}, Lcom/android/server/am/UserController$Injector;->installEncryptionUnawareProviders(I)V

    .line 730
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    move-result v0

    const/high16 v14, 0x50000000

    if-nez v0, :cond_a4

    .line 732
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "unlockedIntent":Landroid/content/Intent;
    move-object v4, v0

    .line 733
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v0, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 734
    invoke-virtual {v0, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 736
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move/from16 v14, v16

    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move/from16 v20, v15

    .end local v15    # "userId":I
    .local v20, "userId":I
    move/from16 v15, v16

    const/16 v16, 0x3e8

    .line 738
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    .line 736
    move/from16 v19, v20

    invoke-virtual/range {v3 .. v19}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    goto :goto_a6

    .line 730
    .end local v0    # "unlockedIntent":Landroid/content/Intent;
    .end local v20    # "userId":I
    .restart local v15    # "userId":I
    :cond_a4
    move/from16 v20, v15

    .line 741
    .end local v15    # "userId":I
    .restart local v20    # "userId":I
    :goto_a6
    move/from16 v4, v20

    .end local v20    # "userId":I
    .local v4, "userId":I
    invoke-direct {v1, v4}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 742
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 743
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 744
    .local v3, "parent":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_10d

    .line 746
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    const-string v6, "android.intent.action.PROFILE_ACCESSIBLE"

    invoke-direct {v1, v4, v5, v6}, Lcom/android/server/am/UserController;->broadcastProfileAccessibleStateChanged(IILjava/lang/String;)V

    .line 753
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_10d

    .line 754
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v5, "profileUnlockedIntent":Landroid/content/Intent;
    move-object/from16 v21, v5

    .line 756
    const-string v6, "android.intent.extra.USER"

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 757
    const/high16 v6, 0x50000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 760
    iget-object v6, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    move-object/from16 v20, v6

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, -0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    sget v32, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v33, 0x3e8

    .line 762
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v34

    .line 763
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v35

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    move/from16 v36, v6

    .line 760
    invoke-virtual/range {v20 .. v36}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 770
    .end local v3    # "parent":Landroid/content/pm/UserInfo;
    .end local v5    # "profileUnlockedIntent":Landroid/content/Intent;
    :cond_10d
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3, v4}, Lcom/android/server/am/UserController$Injector;->startUserWidgets(I)V

    .line 775
    invoke-direct {v1, v4}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 776
    .local v3, "info":Landroid/content/pm/UserInfo;
    iget-object v5, v3, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    sget-object v6, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12f

    const-string/jumbo v5, "persist.pm.mock-upgrade"

    const/4 v6, 0x0

    .line 777
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_12b

    goto :goto_12f

    .line 785
    :cond_12b
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V

    goto :goto_13e

    .line 781
    :cond_12f
    :goto_12f
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    .line 782
    .local v5, "quiet":Z
    iget-object v6, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    new-instance v7, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;

    invoke-direct {v7, v1, v2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    invoke-virtual {v6, v4, v5, v7}, Lcom/android/server/am/UserController$Injector;->sendPreBootBroadcast(IZLjava/lang/Runnable;)V

    .line 784
    .end local v5    # "quiet":Z
    nop

    .line 787
    :goto_13e
    return-void

    .line 710
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "info":Landroid/content/pm/UserInfo;
    .end local v4    # "userId":I
    .restart local v15    # "userId":I
    :catchall_13f
    move-exception v0

    move v4, v15

    .end local v15    # "userId":I
    .restart local v4    # "userId":I
    :goto_141
    :try_start_141
    monitor-exit v3
    :try_end_142
    .catchall {:try_start_141 .. :try_end_142} :catchall_143

    throw v0

    :catchall_143
    move-exception v0

    goto :goto_141
.end method

.method private finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V
    .registers 28
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .line 790
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v8, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 791
    .local v6, "userId":I
    const/16 v0, 0x7578

    invoke-static {v0, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 792
    iget-object v1, v7, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 794
    :try_start_12
    iget-object v0, v7, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    iget-object v2, v8, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_149

    if-eq v0, v8, :cond_26

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_22

    return-void

    .line 795
    :catchall_22
    move-exception v0

    move v9, v6

    goto/16 :goto_14b

    :cond_26
    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_149

    .line 796
    invoke-direct {v7, v6}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 797
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_2e

    .line 798
    return-void

    .line 801
    :cond_2e
    invoke-static {v6}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_35

    return-void

    .line 804
    :cond_35
    iget-object v1, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/pm/UserManagerService;->onUserLoggedIn(I)V

    .line 806
    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda0;

    invoke-direct {v1, v7, v0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;)V

    move-object v5, v1

    .line 807
    .local v5, "initializeUser":Ljava/lang/Runnable;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_a0

    .line 808
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-boolean v1, v0, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v1, :cond_6a

    .line 810
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_a0

    .line 811
    :cond_6a
    if-eqz v6, :cond_a0

    .line 812
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.USER_INITIALIZE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    move-object v10, v1

    .line 813
    const/high16 v2, 0x11000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 815
    iget-object v9, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v11, 0x0

    new-instance v2, Lcom/android/server/am/UserController$1;

    move-object v12, v2

    invoke-direct {v2, v7, v5}, Lcom/android/server/am/UserController$1;-><init>(Lcom/android/server/am/UserController;Ljava/lang/Runnable;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    sget v21, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v22, 0x3e8

    .line 825
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    .line 826
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v24

    .line 815
    move/from16 v25, v6

    invoke-virtual/range {v9 .. v25}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 830
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_a0
    :goto_a0
    iget-boolean v1, v0, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v1, :cond_d0

    .line 831
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping pre-created user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object v11, v5

    .end local v5    # "initializeUser":Ljava/lang/Runnable;
    .local v11, "initializeUser":Ljava/lang/Runnable;
    move-object v5, v9

    move v9, v6

    .end local v6    # "userId":I
    .local v9, "userId":I
    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController;->stopUser(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    .line 836
    return-void

    .line 843
    .end local v9    # "userId":I
    .end local v11    # "initializeUser":Ljava/lang/Runnable;
    .restart local v5    # "initializeUser":Ljava/lang/Runnable;
    .restart local v6    # "userId":I
    :cond_d0
    move-object v11, v5

    move v9, v6

    .end local v5    # "initializeUser":Ljava/lang/Runnable;
    .end local v6    # "userId":I
    .restart local v9    # "userId":I
    .restart local v11    # "initializeUser":Ljava/lang/Runnable;
    iget-object v1, v7, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v9, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 845
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Posting BOOT_COMPLETED user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    if-nez v9, :cond_113

    iget-object v1, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 848
    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->isRuntimeRestarted()Z

    move-result v1

    if-nez v1, :cond_113

    iget-object v1, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->isFirstBootOrUpgrade()Z

    move-result v1

    if-nez v1, :cond_113

    .line 849
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 850
    .local v1, "elapsedTimeMs":J
    const/16 v3, 0xf0

    const/16 v4, 0xd

    invoke-static {v3, v4, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 854
    .end local v1    # "elapsedTimeMs":J
    :cond_113
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v10, v1

    .line 855
    .local v10, "bootIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v10, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 856
    const/high16 v1, -0x77000000

    invoke-virtual {v10, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 861
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 862
    .local v12, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 863
    .local v13, "callingPid":I
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v14

    new-instance v15, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v3, v10

    move v4, v9

    move v5, v12

    move v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/UserController;Landroid/content/Intent;III)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 881
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceStub;->get()Lcom/android/server/am/ActivityManagerServiceStub;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/server/am/ActivityManagerServiceStub;->finishBootingAsUser(I)V

    .line 882
    return-void

    .line 795
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v9    # "userId":I
    .end local v10    # "bootIntent":Landroid/content/Intent;
    .end local v11    # "initializeUser":Ljava/lang/Runnable;
    .end local v12    # "callingUid":I
    .end local v13    # "callingPid":I
    .restart local v6    # "userId":I
    :catchall_149
    move-exception v0

    move v9, v6

    .end local v6    # "userId":I
    .restart local v9    # "userId":I
    :goto_14b
    :try_start_14b
    monitor-exit v1
    :try_end_14c
    .catchall {:try_start_14b .. :try_end_14c} :catchall_14d

    throw v0

    :catchall_14d
    move-exception v0

    goto :goto_14b
.end method

.method private finishUserUnlocking(Lcom/android/server/am/UserState;)Z
    .registers 8
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .line 645
    iget-object v0, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 646
    .local v0, "userId":I
    const/16 v1, 0x7576

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 647
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 650
    invoke-static {v0}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_18

    return v4

    .line 651
    :cond_18
    iget-object v3, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 653
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_4d

    iget v5, p1, Lcom/android/server/am/UserState;->state:I

    if-eq v5, v2, :cond_28

    goto :goto_4d

    .line 656
    :cond_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_4f

    .line 657
    iget-object v3, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v3}, Lcom/android/internal/util/ProgressReporter;->start()V

    .line 660
    iget-object v3, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    iget-object v4, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 661
    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x104013e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 660
    invoke-virtual {v3, v1, v4}, Lcom/android/internal/util/ProgressReporter;->setProgress(ILjava/lang/CharSequence;)V

    .line 664
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 690
    return v2

    .line 654
    :cond_4d
    :goto_4d
    :try_start_4d
    monitor-exit v3

    return v4

    .line 656
    :catchall_4f
    move-exception v1

    monitor-exit v3
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_4f

    throw v1
.end method

.method private forceStopUser(ILjava/lang/String;)V
    .registers 25
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 1308
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v3, :cond_1e

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const-string v4, "ActivityManager"

    const-string v5, "forceStopUser(%d): %s"

    invoke-static {v4, v5, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1309
    :cond_1e
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/am/UserController$Injector;->activityManagerForceStopPackage(ILjava/lang/String;)V

    .line 1310
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1312
    return-void

    .line 1314
    :cond_30
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.USER_STOPPED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "intent":Landroid/content/Intent;
    move-object v6, v3

    .line 1315
    const/high16 v4, 0x50000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1317
    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1318
    iget-object v5, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget v17, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v18, 0x3e8

    .line 1320
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    .line 1321
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    const/16 v21, -0x1

    .line 1318
    invoke-virtual/range {v5 .. v21}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 1324
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 1325
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 1326
    iget-object v5, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 1327
    .local v5, "parent":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_7d

    .line 1328
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    const-string v7, "android.intent.action.PROFILE_INACCESSIBLE"

    invoke-direct {v0, v1, v6, v7}, Lcom/android/server/am/UserController;->broadcastProfileAccessibleStateChanged(IILjava/lang/String;)V

    .line 1333
    .end local v5    # "parent":Landroid/content/pm/UserInfo;
    :cond_7d
    return-void
.end method

.method private getCurrentOrTargetUserIdLU()I
    .registers 3

    .line 2560
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    goto :goto_b

    :cond_9
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    :goto_b
    return v0
.end method

.method private getCurrentUserIdLU()I
    .registers 2

    .line 2565
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    return v0
.end method

.method private getCurrentUserLU()Landroid/content/pm/UserInfo;
    .registers 3

    .line 2548
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    move-result v0

    .line 2549
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1
.end method

.method private getSwitchingFromSystemUserMessageUnchecked()Ljava/lang/String;
    .registers 3

    .line 2740
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2741
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2742
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private getSwitchingToSystemUserMessageUnchecked()Ljava/lang/String;
    .registers 3

    .line 2746
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2747
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2748
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;
    .registers 12
    .param p1, "reasonCode"    # I

    .line 3150
    const-wide/16 v0, 0x2710

    .line 3151
    .local v0, "duration":J
    const-class v2, Landroid/app/ActivityManagerInternal;

    .line 3152
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    .line 3153
    .local v2, "amInternal":Landroid/app/ActivityManagerInternal;
    if-eqz v2, :cond_10

    .line 3154
    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v0

    .line 3156
    :cond_10
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v9

    .line 3157
    .local v9, "bOptions":Landroid/app/BroadcastOptions;
    const/4 v6, 0x0

    const-string v8, ""

    move-object v3, v9

    move-wide v4, v0

    move v7, p1

    invoke-virtual/range {v3 .. v8}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 3159
    return-object v9
.end method

.method private getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 3
    .param p1, "userId"    # I

    .line 2585
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method private getUsersToStopLU(I)[I
    .registers 13
    .param p1, "userId"    # I

    .line 1285
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1286
    .local v0, "startedUsersSize":I
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    .line 1287
    .local v1, "userIds":Landroid/util/IntArray;
    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    .line 1288
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 1289
    .local v2, "userGroupId":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17
    if-ge v4, v0, :cond_44

    .line 1290
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/UserState;

    .line 1291
    .local v5, "uss":Lcom/android/server/am/UserState;
    iget-object v6, v5, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 1293
    .local v6, "startedUserId":I
    iget-object v7, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 1295
    .local v7, "startedUserGroupId":I
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v3, :cond_35

    if-ne v2, v7, :cond_35

    move v10, v9

    goto :goto_36

    :cond_35
    move v10, v8

    .line 1298
    .local v10, "sameGroup":Z
    :goto_36
    if-ne v6, p1, :cond_39

    move v8, v9

    .line 1299
    .local v8, "sameUserId":Z
    :cond_39
    if-eqz v10, :cond_41

    if-eqz v8, :cond_3e

    .line 1300
    goto :goto_41

    .line 1302
    :cond_3e
    invoke-virtual {v1, v6}, Landroid/util/IntArray;->add(I)V

    .line 1289
    .end local v5    # "uss":Lcom/android/server/am/UserState;
    .end local v6    # "startedUserId":I
    .end local v7    # "startedUserGroupId":I
    .end local v8    # "sameUserId":Z
    .end local v10    # "sameGroup":Z
    :cond_41
    :goto_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 1304
    .end local v4    # "i":I
    :cond_44
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    return-object v3
.end method

.method private isCallingOnHandlerThread()Z
    .registers 3

    .line 1739
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private isCurrentUserLU(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 2576
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isUserSwitchUiEnabled()Z
    .registers 3

    .line 445
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 446
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    monitor-exit v0

    return v1

    .line 447
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method static synthetic lambda$stopSingleUserLU$5(Landroid/app/IStopUserCallback;I)V
    .registers 3
    .param p0, "stopUserCallback"    # Landroid/app/IStopUserCallback;
    .param p1, "userId"    # I

    .line 1035
    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/IStopUserCallback;->userStopped(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1037
    goto :goto_5

    .line 1036
    :catch_4
    move-exception v0

    .line 1038
    :goto_5
    return-void
.end method

.method private logAndClearSessionId(I)V
    .registers 10
    .param p1, "userId"    # I

    .line 3137
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3138
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserController$UserJourneySession;

    .line 3139
    .local v1, "userJourneySession":Lcom/android/server/am/UserController$UserJourneySession;
    if-eqz v1, :cond_17

    .line 3140
    const/16 v2, 0x109

    iget-wide v3, v1, Lcom/android/server/am/UserController$UserJourneySession;->mSessionId:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p1

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIII)V

    .line 3144
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->clearSessionId(I)V

    .line 3145
    .end local v1    # "userJourneySession":Lcom/android/server/am/UserController$UserJourneySession;
    monitor-exit v0

    .line 3146
    return-void

    .line 3145
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private logUserJourneyInfo(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;I)V
    .registers 19
    .param p1, "origin"    # Landroid/content/pm/UserInfo;
    .param p2, "target"    # Landroid/content/pm/UserInfo;
    .param p3, "journey"    # I

    .line 3030
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v12, p3

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    const-wide/16 v4, 0x1

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {v0, v4, v5, v6, v7}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v13

    .line 3031
    .local v13, "newSessionId":J
    iget-object v4, v1, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    monitor-enter v4

    .line 3032
    :try_start_19
    iget-object v0, v1, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UserController$UserJourneySession;

    .line 3033
    .local v0, "userJourneySession":Lcom/android/server/am/UserController$UserJourneySession;
    if-eqz v0, :cond_66

    .line 3035
    iget v5, v0, Lcom/android/server/am/UserController$UserJourneySession;->mJourney:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2f

    iget v5, v0, Lcom/android/server/am/UserController$UserJourneySession;->mJourney:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_36

    :cond_2f
    const/4 v5, 0x3

    if-eq v12, v5, :cond_42

    const/4 v5, 0x5

    if-ne v12, v5, :cond_36

    goto :goto_42

    .line 3062
    :cond_36
    const/16 v6, 0x109

    iget-wide v7, v0, Lcom/android/server/am/UserController$UserJourneySession;->mSessionId:J

    iget v9, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIII)V

    goto :goto_66

    .line 3044
    :cond_42
    :goto_42
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v5, :cond_64

    .line 3045
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not logged as it is expected to be part of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/server/am/UserController$UserJourneySession;->mJourney:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    :cond_64
    monitor-exit v4

    return-void

    .line 3067
    :cond_66
    :goto_66
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v5, :cond_8c

    .line 3068
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting a new journey: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with session id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    :cond_8c
    new-instance v5, Lcom/android/server/am/UserController$UserJourneySession;

    invoke-direct {v5, v13, v14, v12}, Lcom/android/server/am/UserController$UserJourneySession;-><init>(JI)V

    move-object v0, v5

    .line 3073
    iget-object v5, v1, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3080
    iget-object v5, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xc8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3081
    iget-object v5, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/32 v7, 0x15f90

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3083
    nop

    .end local v0    # "userJourneySession":Lcom/android/server/am/UserController$UserJourneySession;
    monitor-exit v4
    :try_end_b1
    .catchall {:try_start_19 .. :try_end_b1} :catchall_cb

    .line 3085
    const/16 v4, 0x108

    .line 3086
    if-eqz v2, :cond_b8

    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    goto :goto_b9

    :cond_b8
    const/4 v0, -0x1

    :goto_b9
    move v8, v0

    iget v9, v3, Landroid/content/pm/UserInfo;->id:I

    iget-object v0, v3, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 3087
    invoke-static {v0}, Landroid/os/UserManager;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v10

    iget v11, v3, Landroid/content/pm/UserInfo;->flags:I

    .line 3085
    move-wide v5, v13

    move/from16 v7, p3

    invoke-static/range {v4 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIIIII)V

    .line 3088
    return-void

    .line 3083
    :catchall_cb
    move-exception v0

    :try_start_cc
    monitor-exit v4
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cb

    throw v0
.end method

.method private logUserLifecycleEvent(III)V
    .registers 13
    .param p1, "userId"    # I
    .param p2, "event"    # I
    .param p3, "eventState"    # I

    .line 3097
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3098
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserController$UserJourneySession;

    .line 3099
    .local v1, "userJourneySession":Lcom/android/server/am/UserController$UserJourneySession;
    if-eqz v1, :cond_22

    iget-wide v2, v1, Lcom/android/server/am/UserController$UserJourneySession;->mSessionId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_16

    goto :goto_22

    .line 3104
    :cond_16
    iget-wide v4, v1, Lcom/android/server/am/UserController$UserJourneySession;->mSessionId:J

    .line 3105
    .end local v1    # "userJourneySession":Lcom/android/server/am/UserController$UserJourneySession;
    .local v4, "sessionId":J
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_42

    .line 3107
    const/16 v3, 0x109

    move v6, p1

    move v7, p2

    move v8, p3

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIII)V

    .line 3109
    return-void

    .line 3100
    .end local v4    # "sessionId":J
    .restart local v1    # "userJourneySession":Lcom/android/server/am/UserController$UserJourneySession;
    :cond_22
    :goto_22
    :try_start_22
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserLifecycleEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " received without an active userJourneySession."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    monitor-exit v0

    return-void

    .line 3105
    .end local v1    # "userJourneySession":Lcom/android/server/am/UserController$UserJourneySession;
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_22 .. :try_end_44} :catchall_42

    throw v1
.end method

.method private maybeUnlockUser(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1770
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/UserController;->unlockUserCleared(I[BLandroid/os/IProgressListener;)Z

    move-result v0

    return v0
.end method

.method private moveUserToForeground(Lcom/android/server/am/UserState;II)V
    .registers 7
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .line 2121
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0, p3, p1}, Lcom/android/server/am/UserController$Injector;->taskSupervisorSwitchUser(ILcom/android/server/am/UserState;)Z

    move-result v0

    .line 2122
    .local v0, "homeInFront":Z
    if-eqz v0, :cond_11

    .line 2123
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v2, "moveUserToForeground"

    invoke-virtual {v1, p3, v2}, Lcom/android/server/am/UserController$Injector;->startHomeActivity(ILjava/lang/String;)V

    goto :goto_16

    .line 2125
    :cond_11
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->taskSupervisorResumeFocusedStackTopActivity()V

    .line 2127
    :goto_16
    invoke-static {p3}, Lcom/android/server/am/EventLogTags;->writeAmSwitchUser(I)V

    .line 2128
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/UserController;->sendUserSwitchBroadcasts(II)V

    .line 2130
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceStub;->get()Lcom/android/server/am/ActivityManagerServiceStub;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/android/server/am/ActivityManagerServiceStub;->moveUserToForeground(II)V

    .line 2131
    return-void
.end method

.method private static notifyFinished(ILandroid/os/IProgressListener;)V
    .registers 3
    .param p0, "userId"    # I
    .param p1, "listener"    # Landroid/os/IProgressListener;

    .line 1774
    if-nez p1, :cond_3

    return-void

    .line 1776
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-interface {p1, p0, v0}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1778
    goto :goto_9

    .line 1777
    :catch_8
    move-exception v0

    .line 1779
    :goto_9
    return-void
.end method

.method private sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V
    .registers 6
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .line 2061
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 2062
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2063
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2065
    return-void
.end method

.method private sendLockedBootCompletedBroadcast(Landroid/content/IIntentReceiver;I)V
    .registers 23
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .param p2, "userId"    # I

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v17, p2

    .line 626
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v14, v1

    .local v14, "intent":Landroid/content/Intent;
    move-object v2, v14

    .line 627
    const-string v1, "android.intent.extra.user_handle"

    move/from16 v12, p2

    invoke-virtual {v14, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 628
    const/high16 v1, -0x77000000

    invoke-virtual {v14, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 631
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v3, "android.permission.RECEIVE_BOOT_COMPLETED"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    .line 634
    const/16 v3, 0xca

    invoke-direct {v0, v3}, Lcom/android/server/am/UserController;->getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;

    move-result-object v3

    .line 635
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    sget v13, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 637
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    .line 631
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v11, 0x1

    const/16 v18, 0x0

    move/from16 v12, v18

    const/16 v18, 0x3e8

    move-object/from16 v19, v14

    .end local v14    # "intent":Landroid/content/Intent;
    .local v19, "intent":Landroid/content/Intent;
    move/from16 v14, v18

    invoke-virtual/range {v1 .. v17}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 638
    return-void
.end method

.method private shouldStopUserOnSwitch()Z
    .registers 8

    .line 473
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 474
    :try_start_3
    iget v1, p0, Lcom/android/server/am/UserController;->mStopUserOnSwitch:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v1, v3, :cond_21

    .line 475
    if-ne v1, v4, :cond_e

    move v1, v4

    goto :goto_f

    :cond_e
    move v1, v2

    .line 476
    .local v1, "value":Z
    :goto_f
    const-string v3, "ActivityManager"

    const-string/jumbo v5, "shouldStopUserOnSwitch(): returning overridden value (%b)"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v3, v5, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    monitor-exit v0

    return v1

    .line 479
    .end local v1    # "value":Z
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_31

    .line 480
    const-string v0, "fw.stop_bg_users_on_switch"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 481
    .local v0, "property":I
    if-ne v0, v3, :cond_2d

    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    goto :goto_30

    :cond_2d
    if-ne v0, v4, :cond_30

    move v2, v4

    :cond_30
    :goto_30
    return v2

    .line 479
    .end local v0    # "property":I
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method

.method private showUserSwitchDialog(Landroid/util/Pair;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/content/pm/UserInfo;",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 1900
    .local p1, "fromToUserPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1901
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getSwitchingFromSystemUserMessageUnchecked()Ljava/lang/String;

    move-result-object v3

    .line 1902
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getSwitchingToSystemUserMessageUnchecked()Ljava/lang/String;

    move-result-object v4

    .line 1900
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/UserController$Injector;->showUserSwitchingDialog(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    return-void
.end method

.method private startProfiles()V
    .registers 10

    .line 1376
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    .line 1377
    .local v0, "currentUserId":I
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    const-string v2, "ActivityManager"

    if-eqz v1, :cond_10

    const-string/jumbo v1, "startProfilesLocked"

    invoke-static {v2, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_10
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    .line 1380
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1381
    .local v4, "profilesToStart":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 1382
    .local v6, "user":Landroid/content/pm/UserInfo;
    iget v7, v6, Landroid/content/pm/UserInfo;->flags:I

    const/16 v8, 0x10

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_48

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    if-eq v7, v0, :cond_48

    .line 1383
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v7

    if-nez v7, :cond_48

    .line 1384
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1386
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    :cond_48
    goto :goto_28

    .line 1387
    :cond_49
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 1388
    .local v5, "profilesToStartSize":I
    const/4 v6, 0x0

    .line 1389
    .local v6, "i":I
    :goto_4e
    if-ge v6, v5, :cond_66

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getMaxRunningUsers()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_66

    .line 1390
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v7, v3}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    .line 1389
    add-int/lit8 v6, v6, 0x1

    goto :goto_4e

    .line 1392
    :cond_66
    if-ge v6, v5, :cond_6d

    .line 1393
    const-string v3, "More profiles than MAX_RUNNING_USERS"

    invoke-static {v2, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :cond_6d
    return-void
.end method

.method private startUserInternal(IZLandroid/os/IProgressListener;Lcom/android/server/utils/TimingsTraceAndSlog;)Z
    .registers 42
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z
    .param p3, "unlockListener"    # Landroid/os/IProgressListener;
    .param p4, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1488
    move-object/from16 v1, p0

    move/from16 v14, p1

    move/from16 v13, p2

    move-object/from16 v12, p3

    move-object/from16 v11, p4

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_29

    .line 1489
    const-string v0, "ActivityManager"

    const-string v2, "Starting user %d%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    if-eqz v13, :cond_22

    const-string v4, " in foreground"

    goto :goto_24

    :cond_22
    const-string v4, ""

    :goto_24
    aput-object v4, v3, v10

    invoke-static {v0, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1491
    :cond_29
    const/16 v0, 0x757c

    invoke-static {v0, v14}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1493
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v28

    .line 1494
    .local v28, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v29

    .line 1495
    .local v29, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v30

    .line 1497
    .local v30, "ident":J
    :try_start_3a
    const-string/jumbo v0, "getStartedUserState"

    invoke-virtual {v11, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1498
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    move v15, v0

    .line 1499
    .local v15, "oldUserId":I
    if-ne v15, v14, :cond_6c

    .line 1500
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v0

    .line 1501
    .local v0, "state":Lcom/android/server/am/UserState;
    if-nez v0, :cond_55

    .line 1502
    const-string v2, "ActivityManager"

    const-string v3, "Current user has no UserState"

    invoke-static {v2, v3}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    .line 1505
    :cond_55
    if-nez v14, :cond_5c

    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    if-nez v2, :cond_5c

    goto :goto_6c

    .line 1509
    :cond_5c
    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_64

    .line 1512
    invoke-static {v14, v12}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V

    .line 1514
    :cond_64
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_67
    .catchall {:try_start_3a .. :try_end_67} :catchall_407

    .line 1515
    nop

    .line 1732
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1515
    return v10

    .line 1519
    .end local v0    # "state":Lcom/android/server/am/UserState;
    :cond_6c
    :goto_6c
    :try_start_6c
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1521
    if-eqz v13, :cond_81

    .line 1522
    const-string v0, "clearAllLockedTasks"

    invoke-virtual {v11, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1523
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v2, "startUser"

    invoke-virtual {v0, v2}, Lcom/android/server/am/UserController$Injector;->clearAllLockedTasks(Ljava/lang/String;)V

    .line 1524
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1527
    :cond_81
    const-string/jumbo v0, "getUserInfo"

    invoke-virtual {v11, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1528
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    move-object v8, v0

    .line 1529
    .local v8, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1531
    if-nez v8, :cond_ae

    .line 1532
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No user info for user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catchall {:try_start_6c .. :try_end_a9} :catchall_407

    .line 1533
    nop

    .line 1732
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1533
    return v9

    .line 1535
    :cond_ae
    if-eqz v13, :cond_d9

    :try_start_b0
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 1536
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot switch to User #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": not a full user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catchall {:try_start_b0 .. :try_end_d4} :catchall_407

    .line 1537
    nop

    .line 1732
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1537
    return v9

    .line 1540
    :cond_d9
    if-eqz v13, :cond_102

    :try_start_db
    iget-boolean v0, v8, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v0, :cond_102

    .line 1541
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot start pre-created user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as foreground"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fd
    .catchall {:try_start_db .. :try_end_fd} :catchall_407

    .line 1542
    nop

    .line 1732
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1542
    return v9

    .line 1545
    :cond_102
    if-eqz v13, :cond_11f

    :try_start_104
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->isUserSwitchUiEnabled()Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 1546
    const-string/jumbo v0, "startFreezingScreen"

    invoke-virtual {v11, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1551
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    const v2, 0x10a009e

    invoke-virtual {v0, v2, v9}, Lcom/android/server/wm/WindowManagerService;->startFreezingScreen(II)V

    .line 1553
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1556
    :cond_11f
    const/4 v2, 0x0

    .line 1557
    .local v2, "needStart":Z
    const/4 v3, 0x0

    .line 1562
    .local v3, "updateUmState":Z
    const-string/jumbo v0, "updateStartedUserArrayStarting"

    invoke-virtual {v11, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1563
    iget-object v4, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_12a
    .catchall {:try_start_104 .. :try_end_12a} :catchall_407

    .line 1564
    :try_start_12a
    iget-object v0, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UserState;
    :try_end_132
    .catchall {:try_start_12a .. :try_end_132} :catchall_3fb

    .line 1565
    .local v0, "uss":Lcom/android/server/am/UserState;
    const/4 v7, 0x5

    if-nez v0, :cond_162

    .line 1566
    :try_start_135
    new-instance v5, Lcom/android/server/am/UserState;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    move-object v0, v5

    .line 1567
    iget-object v5, v0, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    new-instance v6, Lcom/android/server/am/UserController$UserProgressListener;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Lcom/android/server/am/UserController$UserProgressListener;-><init>(Lcom/android/server/am/UserController$UserProgressListener-IA;)V

    invoke-virtual {v5, v6}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 1568
    iget-object v5, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v14, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1569
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V
    :try_end_152
    .catchall {:try_start_135 .. :try_end_152} :catchall_15a

    .line 1570
    const/4 v2, 0x1

    .line 1571
    const/4 v3, 0x1

    move-object v9, v0

    move/from16 v17, v2

    move/from16 v32, v3

    goto :goto_1a1

    .line 1582
    .end local v0    # "uss":Lcom/android/server/am/UserState;
    :catchall_15a
    move-exception v0

    move-object/from16 v36, v8

    move-object v5, v11

    move v6, v14

    move v7, v15

    goto/16 :goto_401

    .line 1572
    .restart local v0    # "uss":Lcom/android/server/am/UserState;
    :cond_162
    :try_start_162
    iget v5, v0, Lcom/android/server/am/UserState;->state:I
    :try_end_164
    .catchall {:try_start_162 .. :try_end_164} :catchall_3fb

    if-ne v5, v7, :cond_19c

    :try_start_166
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->isCallingOnHandlerThread()Z

    move-result v5

    if-nez v5, :cond_19c

    .line 1573
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "User #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is shutting down - will start after full stop"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    iget-object v5, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;

    invoke-direct {v6, v1, v14, v13, v12}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/UserController;IZLandroid/os/IProgressListener;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1576
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1577
    monitor-exit v4
    :try_end_198
    .catchall {:try_start_166 .. :try_end_198} :catchall_15a

    .line 1732
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1577
    return v10

    .line 1579
    :cond_19c
    move-object v9, v0

    move/from16 v17, v2

    move/from16 v32, v3

    .end local v0    # "uss":Lcom/android/server/am/UserState;
    .end local v2    # "needStart":Z
    .end local v3    # "updateUmState":Z
    .local v9, "uss":Lcom/android/server/am/UserState;
    .local v17, "needStart":Z
    .local v32, "updateUmState":Z
    :goto_1a1
    :try_start_1a1
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1580
    .local v0, "userIdInt":Ljava/lang/Integer;
    iget-object v2, v1, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1581
    iget-object v2, v1, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1582
    nop

    .end local v0    # "userIdInt":Ljava/lang/Integer;
    monitor-exit v4
    :try_end_1b1
    .catchall {:try_start_1a1 .. :try_end_1b1} :catchall_3f0

    .line 1583
    if-eqz v12, :cond_1b8

    .line 1584
    :try_start_1b3
    iget-object v0, v9, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v0, v12}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 1586
    :cond_1b8
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1588
    if-eqz v32, :cond_1d1

    .line 1589
    const-string/jumbo v0, "setUserState"

    invoke-virtual {v11, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1590
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    iget v2, v9, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, v14, v2}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 1591
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1593
    :cond_1d1
    const-string/jumbo v0, "updateConfigurationAndProfileIds"

    invoke-virtual {v11, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1594
    if-eqz v13, :cond_230

    .line 1596
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/android/server/am/UserController$Injector;->reportGlobalUsageEvent(I)V

    .line 1598
    iget-object v2, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1e3
    .catchall {:try_start_1b3 .. :try_end_1e3} :catchall_407

    .line 1599
    :try_start_1e3
    iput v14, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 1600
    const/16 v0, -0x2710

    iput v0, v1, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 1601
    iget-boolean v0, v1, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 1602
    .local v0, "userSwitchUiEnabled":Z
    monitor-exit v2
    :try_end_1ec
    .catchall {:try_start_1e3 .. :try_end_1ec} :catchall_22a

    .line 1603
    :try_start_1ec
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->updateUserConfiguration()V

    .line 1604
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIds()V

    .line 1608
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->reportCurWakefulnessUsageEvent()V

    .line 1611
    if-eqz v0, :cond_227

    .line 1612
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 1618
    invoke-static {}, Lcom/miui/server/xspace/XSpaceManagerServiceStub;->getInstance()Lcom/miui/server/xspace/XSpaceManagerServiceStub;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1619
    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1620
    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v19

    .line 1618
    move/from16 v4, p1

    move/from16 v5, p1

    move v6, v15

    move v10, v7

    move-object/from16 v7, v18

    move-object v12, v8

    .end local v8    # "userInfo":Landroid/content/pm/UserInfo;
    .local v12, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v8, v19

    invoke-virtual/range {v2 .. v8}, Lcom/miui/server/xspace/XSpaceManagerServiceStub;->handleWindowManagerAndUserLru(Landroid/content/Context;IIILcom/android/server/wm/WindowManagerService;[I)V
    :try_end_226
    .catchall {:try_start_1ec .. :try_end_226} :catchall_407

    goto :goto_229

    .line 1611
    .end local v12    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v8    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_227
    move v10, v7

    move-object v12, v8

    .line 1624
    .end local v0    # "userSwitchUiEnabled":Z
    .end local v8    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v12    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_229
    goto :goto_257

    .line 1602
    .end local v12    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v8    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_22a
    move-exception v0

    move-object v12, v8

    .end local v8    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v12    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_22c
    :try_start_22c
    monitor-exit v2
    :try_end_22d
    .catchall {:try_start_22c .. :try_end_22d} :catchall_22e

    .end local v28    # "callingUid":I
    .end local v29    # "callingPid":I
    .end local v30    # "ident":J
    .end local p0    # "this":Lcom/android/server/am/UserController;
    .end local p1    # "userId":I
    .end local p2    # "foreground":Z
    .end local p3    # "unlockListener":Landroid/os/IProgressListener;
    .end local p4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_22d
    throw v0

    .restart local v28    # "callingUid":I
    .restart local v29    # "callingPid":I
    .restart local v30    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/UserController;
    .restart local p1    # "userId":I
    .restart local p2    # "foreground":Z
    .restart local p3    # "unlockListener":Landroid/os/IProgressListener;
    .restart local p4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :catchall_22e
    move-exception v0

    goto :goto_22c

    .line 1625
    .end local v12    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v8    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_230
    move v10, v7

    move-object v12, v8

    .end local v8    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v12    # "userInfo":Landroid/content/pm/UserInfo;
    iget v0, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    .line 1626
    .local v2, "currentUserIdInt":Ljava/lang/Integer;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIds()V

    .line 1627
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->setCurrentProfileIds([I)V

    .line 1628
    iget-object v3, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_24c
    .catchall {:try_start_22d .. :try_end_24c} :catchall_407

    .line 1629
    :try_start_24c
    iget-object v0, v1, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1630
    iget-object v0, v1, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1631
    monitor-exit v3
    :try_end_257
    .catchall {:try_start_24c .. :try_end_257} :catchall_3e5

    .line 1633
    .end local v2    # "currentUserIdInt":Ljava/lang/Integer;
    :goto_257
    :try_start_257
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1637
    iget v0, v9, Lcom/android/server/am/UserState;->state:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_285

    .line 1638
    const-string/jumbo v0, "updateStateStopping"

    invoke-virtual {v11, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1642
    iget v0, v9, Lcom/android/server/am/UserState;->lastState:I

    invoke-virtual {v9, v0}, Lcom/android/server/am/UserState;->setState(I)V

    .line 1643
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    iget v2, v9, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, v14, v2}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 1644
    iget-object v2, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_278
    .catchall {:try_start_257 .. :try_end_278} :catchall_407

    .line 1645
    :try_start_278
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 1646
    monitor-exit v2
    :try_end_27c
    .catchall {:try_start_278 .. :try_end_27c} :catchall_282

    .line 1647
    const/16 v17, 0x1

    .line 1648
    :try_start_27e
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_281
    .catchall {:try_start_27e .. :try_end_281} :catchall_407

    goto :goto_2ae

    .line 1646
    :catchall_282
    move-exception v0

    :try_start_283
    monitor-exit v2
    :try_end_284
    .catchall {:try_start_283 .. :try_end_284} :catchall_282

    .end local v28    # "callingUid":I
    .end local v29    # "callingPid":I
    .end local v30    # "ident":J
    .end local p0    # "this":Lcom/android/server/am/UserController;
    .end local p1    # "userId":I
    .end local p2    # "foreground":Z
    .end local p3    # "unlockListener":Landroid/os/IProgressListener;
    .end local p4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_284
    throw v0

    .line 1649
    .restart local v28    # "callingUid":I
    .restart local v29    # "callingPid":I
    .restart local v30    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/UserController;
    .restart local p1    # "userId":I
    .restart local p2    # "foreground":Z
    .restart local p3    # "unlockListener":Landroid/os/IProgressListener;
    .restart local p4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :cond_285
    iget v0, v9, Lcom/android/server/am/UserState;->state:I

    if-ne v0, v10, :cond_2ae

    .line 1650
    const-string/jumbo v0, "updateStateShutdown"

    invoke-virtual {v11, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1653
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/android/server/am/UserState;->setState(I)V

    .line 1654
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    iget v2, v9, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, v14, v2}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 1655
    iget-object v2, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2a1
    .catchall {:try_start_284 .. :try_end_2a1} :catchall_407

    .line 1656
    :try_start_2a1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 1657
    monitor-exit v2
    :try_end_2a5
    .catchall {:try_start_2a1 .. :try_end_2a5} :catchall_2ab

    .line 1658
    const/16 v17, 0x1

    .line 1659
    :try_start_2a7
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_2aa
    .catchall {:try_start_2a7 .. :try_end_2aa} :catchall_407

    goto :goto_2ae

    .line 1657
    :catchall_2ab
    move-exception v0

    :try_start_2ac
    monitor-exit v2
    :try_end_2ad
    .catchall {:try_start_2ac .. :try_end_2ad} :catchall_2ab

    .end local v28    # "callingUid":I
    .end local v29    # "callingPid":I
    .end local v30    # "ident":J
    .end local p0    # "this":Lcom/android/server/am/UserController;
    .end local p1    # "userId":I
    .end local p2    # "foreground":Z
    .end local p3    # "unlockListener":Landroid/os/IProgressListener;
    .end local p4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_2ad
    throw v0

    .line 1662
    .restart local v28    # "callingUid":I
    .restart local v29    # "callingPid":I
    .restart local v30    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/UserController;
    .restart local p1    # "userId":I
    .restart local p2    # "foreground":Z
    .restart local p3    # "unlockListener":Landroid/os/IProgressListener;
    .restart local p4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :cond_2ae
    :goto_2ae
    iget v0, v9, Lcom/android/server/am/UserState;->state:I

    if-nez v0, :cond_2d0

    .line 1663
    const-string/jumbo v0, "updateStateBooting"

    invoke-virtual {v11, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1666
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/android/server/pm/UserManagerService;->onBeforeStartUser(I)V

    .line 1671
    iget-object v0, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x32

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v14, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1672
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1675
    :cond_2d0
    const-string/jumbo v0, "sendMessages"

    invoke-virtual {v11, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1676
    if-eqz v13, :cond_305

    .line 1677
    iget-object v0, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3c

    invoke-virtual {v0, v2, v14, v15}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1678
    iget-object v0, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1679
    iget-object v0, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1e

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1680
    iget-object v0, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v15, v14, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1682
    iget-object v0, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v15, v14, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1686
    :cond_305
    iget-boolean v0, v12, Landroid/content/pm/UserInfo;->preCreated:Z
    :try_end_307
    .catchall {:try_start_2ad .. :try_end_307} :catchall_407

    if-eqz v0, :cond_30e

    .line 1687
    const/16 v17, 0x0

    move/from16 v0, v17

    goto :goto_310

    .line 1686
    :cond_30e
    move/from16 v0, v17

    .line 1690
    .end local v17    # "needStart":Z
    .local v0, "needStart":Z
    :goto_310
    if-eqz v0, :cond_35b

    .line 1692
    :try_start_312
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_STARTED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v2

    .line 1693
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v2, 0x50000000

    invoke-virtual {v10, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1695
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v10, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1696
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    sget v22, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v3, 0x3e8

    move/from16 v33, v15

    .end local v15    # "oldUserId":I
    .local v33, "oldUserId":I
    move v15, v3

    move-object v3, v10

    move-object/from16 v34, v9

    .end local v9    # "uss":Lcom/android/server/am/UserState;
    .local v34, "uss":Lcom/android/server/am/UserState;
    move-object/from16 v9, v16

    move-object/from16 v20, v10

    const/16 v35, 0x1

    .end local v10    # "intent":Landroid/content/Intent;
    .local v20, "intent":Landroid/content/Intent;
    move/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v36, v12

    .end local v12    # "userInfo":Landroid/content/pm/UserInfo;
    .local v36, "userInfo":Landroid/content/pm/UserInfo;
    move/from16 v12, v19

    move/from16 v13, v21

    move/from16 v14, v22

    move/from16 v16, v28

    move/from16 v17, v29

    move/from16 v18, p1

    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    goto :goto_363

    .line 1690
    .end local v20    # "intent":Landroid/content/Intent;
    .end local v33    # "oldUserId":I
    .end local v34    # "uss":Lcom/android/server/am/UserState;
    .end local v36    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v9    # "uss":Lcom/android/server/am/UserState;
    .restart local v12    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v15    # "oldUserId":I
    :cond_35b
    move-object/from16 v34, v9

    move-object/from16 v36, v12

    move/from16 v33, v15

    const/16 v35, 0x1

    .line 1700
    .end local v9    # "uss":Lcom/android/server/am/UserState;
    .end local v12    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v15    # "oldUserId":I
    .restart local v33    # "oldUserId":I
    .restart local v34    # "uss":Lcom/android/server/am/UserState;
    .restart local v36    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_363
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1702
    if-eqz p2, :cond_382

    .line 1703
    const-string/jumbo v2, "moveUserToForeground"
    :try_end_36b
    .catchall {:try_start_312 .. :try_end_36b} :catchall_3df

    move-object/from16 v5, p4

    :try_start_36d
    invoke-virtual {v5, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_370
    .catchall {:try_start_36d .. :try_end_370} :catchall_37d

    .line 1704
    move/from16 v6, p1

    move/from16 v7, v33

    move-object/from16 v4, v34

    .end local v33    # "oldUserId":I
    .end local v34    # "uss":Lcom/android/server/am/UserState;
    .local v4, "uss":Lcom/android/server/am/UserState;
    .local v7, "oldUserId":I
    :try_start_376
    invoke-direct {v1, v4, v7, v6}, Lcom/android/server/am/UserController;->moveUserToForeground(Lcom/android/server/am/UserState;II)V

    .line 1705
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_395

    .line 1732
    .end local v0    # "needStart":Z
    .end local v4    # "uss":Lcom/android/server/am/UserState;
    .end local v7    # "oldUserId":I
    .end local v32    # "updateUmState":Z
    .end local v36    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_37d
    move-exception v0

    move/from16 v6, p1

    goto/16 :goto_40a

    .line 1707
    .restart local v0    # "needStart":Z
    .restart local v32    # "updateUmState":Z
    .restart local v33    # "oldUserId":I
    .restart local v34    # "uss":Lcom/android/server/am/UserState;
    .restart local v36    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_382
    move/from16 v6, p1

    move-object/from16 v5, p4

    move/from16 v7, v33

    move-object/from16 v4, v34

    .end local v33    # "oldUserId":I
    .end local v34    # "uss":Lcom/android/server/am/UserState;
    .restart local v4    # "uss":Lcom/android/server/am/UserState;
    .restart local v7    # "oldUserId":I
    const-string v2, "finishUserBoot"

    invoke-virtual {v5, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1708
    invoke-direct {v1, v4}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V

    .line 1709
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1712
    :goto_395
    if-eqz v0, :cond_3da

    .line 1713
    const-string/jumbo v2, "sendRestartBroadcast"

    invoke-virtual {v5, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1714
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_STARTING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1715
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1716
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1717
    iget-object v11, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v13, 0x0

    new-instance v14, Lcom/android/server/am/UserController$6;

    invoke-direct {v14, v1}, Lcom/android/server/am/UserController$6;-><init>(Lcom/android/server/am/UserController;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v18

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    sget v23, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v24, 0x3e8

    const/16 v27, -0x1

    move-object v12, v2

    move/from16 v25, v28

    move/from16 v26, v29

    invoke-virtual/range {v11 .. v27}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 1729
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_3da
    .catchall {:try_start_376 .. :try_end_3da} :catchall_403

    .line 1732
    .end local v0    # "needStart":Z
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "uss":Lcom/android/server/am/UserState;
    .end local v7    # "oldUserId":I
    .end local v32    # "updateUmState":Z
    .end local v36    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_3da
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1733
    nop

    .line 1735
    return v35

    .line 1732
    :catchall_3df
    move-exception v0

    move/from16 v6, p1

    move-object/from16 v5, p4

    goto :goto_40a

    .line 1631
    .local v2, "currentUserIdInt":Ljava/lang/Integer;
    .restart local v9    # "uss":Lcom/android/server/am/UserState;
    .restart local v12    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v15    # "oldUserId":I
    .restart local v17    # "needStart":Z
    .restart local v32    # "updateUmState":Z
    :catchall_3e5
    move-exception v0

    move-object v4, v9

    move-object v5, v11

    move-object/from16 v36, v12

    move v6, v14

    move v7, v15

    .end local v9    # "uss":Lcom/android/server/am/UserState;
    .end local v12    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v15    # "oldUserId":I
    .restart local v4    # "uss":Lcom/android/server/am/UserState;
    .restart local v7    # "oldUserId":I
    .restart local v36    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_3ec
    :try_start_3ec
    monitor-exit v3
    :try_end_3ed
    .catchall {:try_start_3ec .. :try_end_3ed} :catchall_3ee

    .end local v28    # "callingUid":I
    .end local v29    # "callingPid":I
    .end local v30    # "ident":J
    .end local p0    # "this":Lcom/android/server/am/UserController;
    .end local p1    # "userId":I
    .end local p2    # "foreground":Z
    .end local p3    # "unlockListener":Landroid/os/IProgressListener;
    .end local p4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_3ed
    throw v0
    :try_end_3ee
    .catchall {:try_start_3ed .. :try_end_3ee} :catchall_403

    .restart local v28    # "callingUid":I
    .restart local v29    # "callingPid":I
    .restart local v30    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/UserController;
    .restart local p1    # "userId":I
    .restart local p2    # "foreground":Z
    .restart local p3    # "unlockListener":Landroid/os/IProgressListener;
    .restart local p4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :catchall_3ee
    move-exception v0

    goto :goto_3ec

    .line 1582
    .end local v2    # "currentUserIdInt":Ljava/lang/Integer;
    .end local v4    # "uss":Lcom/android/server/am/UserState;
    .end local v7    # "oldUserId":I
    .end local v36    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v8    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v15    # "oldUserId":I
    :catchall_3f0
    move-exception v0

    move-object/from16 v36, v8

    move-object v5, v11

    move v6, v14

    move v7, v15

    move/from16 v2, v17

    move/from16 v3, v32

    .end local v8    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v15    # "oldUserId":I
    .restart local v7    # "oldUserId":I
    .restart local v36    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_401

    .end local v7    # "oldUserId":I
    .end local v17    # "needStart":Z
    .end local v32    # "updateUmState":Z
    .end local v36    # "userInfo":Landroid/content/pm/UserInfo;
    .local v2, "needStart":Z
    .restart local v3    # "updateUmState":Z
    .restart local v8    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v15    # "oldUserId":I
    :catchall_3fb
    move-exception v0

    move-object/from16 v36, v8

    move-object v5, v11

    move v6, v14

    move v7, v15

    .end local v8    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v15    # "oldUserId":I
    .restart local v7    # "oldUserId":I
    .restart local v36    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_401
    :try_start_401
    monitor-exit v4
    :try_end_402
    .catchall {:try_start_401 .. :try_end_402} :catchall_405

    .end local v28    # "callingUid":I
    .end local v29    # "callingPid":I
    .end local v30    # "ident":J
    .end local p0    # "this":Lcom/android/server/am/UserController;
    .end local p1    # "userId":I
    .end local p2    # "foreground":Z
    .end local p3    # "unlockListener":Landroid/os/IProgressListener;
    .end local p4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_402
    throw v0
    :try_end_403
    .catchall {:try_start_402 .. :try_end_403} :catchall_403

    .line 1732
    .end local v2    # "needStart":Z
    .end local v3    # "updateUmState":Z
    .end local v7    # "oldUserId":I
    .end local v36    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v28    # "callingUid":I
    .restart local v29    # "callingPid":I
    .restart local v30    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/UserController;
    .restart local p1    # "userId":I
    .restart local p2    # "foreground":Z
    .restart local p3    # "unlockListener":Landroid/os/IProgressListener;
    .restart local p4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :catchall_403
    move-exception v0

    goto :goto_40a

    .line 1582
    .restart local v2    # "needStart":Z
    .restart local v3    # "updateUmState":Z
    .restart local v7    # "oldUserId":I
    .restart local v36    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_405
    move-exception v0

    goto :goto_401

    .line 1732
    .end local v2    # "needStart":Z
    .end local v3    # "updateUmState":Z
    .end local v7    # "oldUserId":I
    .end local v36    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_407
    move-exception v0

    move-object v5, v11

    move v6, v14

    :goto_40a
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1733
    throw v0
.end method

.method private startUserNoChecks(IZLandroid/os/IProgressListener;)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z
    .param p3, "unlockListener"    # Landroid/os/IProgressListener;

    .line 1476
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 1478
    .local v0, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserController.startUser-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_1f

    const-string v2, "fg"

    goto :goto_21

    :cond_1f
    const-string v2, "bg"

    :goto_21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1480
    :try_start_2c
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/am/UserController;->startUserInternal(IZLandroid/os/IProgressListener;Lcom/android/server/utils/TimingsTraceAndSlog;)Z

    move-result v1
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_34

    .line 1482
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1480
    return v1

    .line 1482
    :catchall_34
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1483
    throw v1
.end method

.method private stopGuestOrEphemeralUserIfBackground(I)V
    .registers 11
    .param p1, "oldUserId"    # I

    .line 1339
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_1c

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop guest or ephemeral user if background: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1341
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    .line 1342
    .local v1, "oldUss":Lcom/android/server/am/UserState;
    if-eqz p1, :cond_6d

    iget v2, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-eq p1, v2, :cond_6d

    if-eqz v1, :cond_6d

    iget v2, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_6d

    iget v2, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3a

    goto :goto_6d

    .line 1347
    .end local v1    # "oldUss":Lcom/android/server/am/UserState;
    :cond_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_1f .. :try_end_3b} :catchall_6f

    .line 1349
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1350
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1351
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->onEphemeralUserStop(I)V

    .line 1353
    :cond_50
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-nez v0, :cond_5c

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1355
    :cond_5c
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1356
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v4, p1

    :try_start_65
    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    .line 1358
    monitor-exit v2

    .line 1360
    :cond_69
    return-void

    .line 1358
    :catchall_6a
    move-exception v0

    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_6a

    throw v0

    .line 1345
    .local v1, "oldUss":Lcom/android/server/am/UserState;
    :cond_6d
    :goto_6d
    :try_start_6d
    monitor-exit v0

    return-void

    .line 1347
    .end local v1    # "oldUss":Lcom/android/server/am/UserState;
    :catchall_6f
    move-exception v1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_6f

    throw v1
.end method

.method private stopRunningUsersLU(I)V
    .registers 13
    .param p1, "maxRunningUsers"    # I

    .line 523
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getRunningUsersLU()Ljava/util/List;

    move-result-object v0

    .line 524
    .local v0, "currentlyRunning":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 525
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p1, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 526
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 527
    .local v2, "userId":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-ne v3, v4, :cond_29

    .line 529
    goto :goto_8

    .line 533
    :cond_29
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result v3

    if-nez v3, :cond_3b

    .line 536
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 538
    .end local v2    # "userId":Ljava/lang/Integer;
    :cond_3b
    goto :goto_8

    .line 539
    :cond_3c
    return-void
.end method

.method private stopSingleUserLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "allowDelayedLocking"    # Z
    .param p3, "stopUserCallback"    # Landroid/app/IStopUserCallback;
    .param p4, "keyEvictedCallback"    # Lcom/android/server/am/UserState$KeyEvictedCallback;

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopSingleUserLU userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UserState;

    .line 1004
    .local v0, "uss":Lcom/android/server/am/UserState;
    const/4 v2, 0x1

    if-nez v0, :cond_72

    .line 1011
    iget-boolean v3, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    if-eqz v3, :cond_65

    .line 1012
    if-eqz p2, :cond_48

    if-eqz p4, :cond_48

    .line 1013
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowDelayedLocking set with KeyEvictedCallback, ignore it and lock user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v3, v4}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1015
    const/4 p2, 0x0

    .line 1017
    :cond_48
    if-nez p2, :cond_65

    .line 1018
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 1021
    if-eqz p4, :cond_61

    .line 1022
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1023
    .local v1, "keyEvictedCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState$KeyEvictedCallback;>;"
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 1025
    .end local v1    # "keyEvictedCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState$KeyEvictedCallback;>;"
    :cond_61
    const/4 v1, 0x0

    .line 1027
    .restart local v1    # "keyEvictedCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState$KeyEvictedCallback;>;"
    :goto_62
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/UserController;->dispatchUserLocking(ILjava/util/List;)V

    .line 1032
    .end local v1    # "keyEvictedCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState$KeyEvictedCallback;>;"
    :cond_65
    if-eqz p3, :cond_71

    .line 1033
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;

    invoke-direct {v2, p3, p1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;-><init>(Landroid/app/IStopUserCallback;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1040
    :cond_71
    return-void

    .line 1043
    :cond_72
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    const/4 v4, 0x5

    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/am/UserController;->logUserJourneyInfo(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;I)V

    .line 1044
    const/4 v1, 0x7

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 1047
    if-eqz p3, :cond_86

    .line 1048
    iget-object v1, v0, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    :cond_86
    if-eqz p4, :cond_8d

    .line 1051
    iget-object v1, v0, Lcom/android/server/am/UserState;->mKeyEvictedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    :cond_8d
    iget v1, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_c7

    iget v1, v0, Lcom/android/server/am/UserState;->state:I

    if-eq v1, v4, :cond_c7

    .line 1056
    invoke-virtual {v0, v2}, Lcom/android/server/am/UserState;->setState(I)V

    .line 1057
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 1058
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 1060
    move v1, p2

    .line 1061
    .local v1, "allowDelayedLockingCopied":Z
    new-instance v2, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;Z)V

    .line 1064
    .local v2, "finishUserStoppingAsync":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 1065
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1066
    return-void

    .line 1070
    :cond_bd
    iget-object v3, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0, p1, v2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/am/UserController;ILjava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1097
    .end local v1    # "allowDelayedLockingCopied":Z
    .end local v2    # "finishUserStoppingAsync":Ljava/lang/Runnable;
    :cond_c7
    return-void
.end method

.method private stopUserOnSwitchIfEnforced(I)V
    .registers 13
    .param p1, "oldUserId"    # I

    .line 1945
    if-nez p1, :cond_3

    .line 1946
    return-void

    .line 1948
    :cond_3
    const-string/jumbo v0, "no_run_in_background"

    .line 1949
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    .line 1950
    .local v0, "hasRestriction":Z
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1952
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1c

    :try_start_11
    invoke-direct {p0}, Lcom/android/server/am/UserController;->shouldStopUserOnSwitch()Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_1c

    :cond_18
    move v4, v2

    goto :goto_1d

    .line 1966
    :catchall_1a
    move-exception v2

    goto :goto_55

    .line 1952
    :cond_1c
    :goto_1c
    move v4, v3

    .line 1953
    .local v4, "disallowRunInBg":Z
    :goto_1d
    if-nez v4, :cond_35

    .line 1954
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v5, :cond_33

    .line 1955
    const-string v5, "ActivityManager"

    const-string/jumbo v6, "stopUserOnSwitchIfEnforced() NOT stopping %d and related users"

    new-array v3, v3, [Ljava/lang/Object;

    .line 1956
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v2

    .line 1955
    invoke-static {v5, v6, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1958
    :cond_33
    monitor-exit v1

    return-void

    .line 1960
    :cond_35
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v5, :cond_49

    .line 1961
    const-string v5, "ActivityManager"

    const-string/jumbo v6, "stopUserOnSwitchIfEnforced() stopping %d and related users"

    new-array v3, v3, [Ljava/lang/Object;

    .line 1962
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v2

    .line 1961
    invoke-static {v5, v6, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1964
    :cond_49
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    .line 1966
    nop

    .end local v4    # "disallowRunInBg":Z
    monitor-exit v1

    .line 1967
    return-void

    .line 1966
    :goto_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_11 .. :try_end_56} :catchall_1a

    throw v2
.end method

.method private stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I
    .registers 13
    .param p1, "userId"    # I
    .param p2, "force"    # Z
    .param p3, "allowDelayedLocking"    # Z
    .param p4, "stopUserCallback"    # Landroid/app/IStopUserCallback;
    .param p5, "keyEvictedCallback"    # Lcom/android/server/am/UserState$KeyEvictedCallback;

    .line 947
    if-nez p1, :cond_4

    .line 948
    const/4 v0, -0x3

    return v0

    .line 950
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->isCurrentUserLU(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 951
    const/4 v0, -0x2

    return v0

    .line 953
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUsersToStopLU(I)[I

    move-result-object v0

    .line 955
    .local v0, "usersToStop":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    array-length v2, v0

    const-string v3, "ActivityManager"

    const/4 v4, 0x0

    if-ge v1, v2, :cond_64

    .line 956
    aget v2, v0, v1

    .line 957
    .local v2, "relatedUserId":I
    if-eqz v2, :cond_25

    invoke-direct {p0, v2}, Lcom/android/server/am/UserController;->isCurrentUserLU(I)Z

    move-result v5

    if-eqz v5, :cond_22

    goto :goto_25

    .line 955
    .end local v2    # "relatedUserId":I
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 958
    .restart local v2    # "relatedUserId":I
    :cond_25
    :goto_25
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v5, :cond_40

    .line 959
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopUsersLocked cannot stop related user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_40
    if-eqz p2, :cond_62

    .line 963
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Force stop user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Related users will not be stopped"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/server/am/UserController;->stopSingleUserLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)V

    .line 967
    return v4

    .line 969
    :cond_62
    const/4 v3, -0x4

    return v3

    .line 972
    .end local v1    # "i":I
    .end local v2    # "relatedUserId":I
    :cond_64
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v1, :cond_83

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopUsersLocked usersToStop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_83
    array-length v1, v0

    move v2, v4

    :goto_85
    if-ge v2, v1, :cond_99

    aget v3, v0, v2

    .line 974
    .local v3, "userIdToStop":I
    nop

    .line 975
    const/4 v5, 0x0

    if-ne v3, p1, :cond_8f

    move-object v6, p4

    goto :goto_90

    :cond_8f
    move-object v6, v5

    .line 976
    :goto_90
    if-ne v3, p1, :cond_93

    move-object v5, p5

    .line 974
    :cond_93
    invoke-direct {p0, v3, p3, v6, v5}, Lcom/android/server/am/UserController;->stopSingleUserLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)V

    .line 973
    .end local v3    # "userIdToStop":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    .line 978
    :cond_99
    return v4
.end method

.method private timeoutUserSwitch(Lcom/android/server/am/UserState;II)V
    .registers 9
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .line 1970
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1971
    :try_start_3
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User switch timeout: from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    iput-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1973
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1974
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V

    .line 1976
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1978
    monitor-exit v0

    .line 1979
    return-void

    .line 1978
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v1
.end method

.method private timeoutUserSwitchCallbacks(II)V
    .registers 7
    .param p1, "oldUserId"    # I
    .param p2, "newUserId"    # I

    .line 1982
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1983
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 1984
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User switch timeout: from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Observers that didn\'t respond: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1988
    :cond_3e
    monitor-exit v0

    .line 1989
    return-void

    .line 1988
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v1
.end method

.method private unlockUserCleared(I[BLandroid/os/IProgressListener;)Z
    .registers 15
    .param p1, "userId"    # I
    .param p2, "secret"    # [B
    .param p3, "listener"    # Landroid/os/IProgressListener;

    .line 1784
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1785
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1786
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    .line 1789
    .local v1, "storageManager":Landroid/os/storage/IStorageManager;
    :try_start_10
    iget v2, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v1, p1, v2, p2}, Landroid/os/storage/IStorageManager;->unlockUserKey(II[B)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_15} :catch_16

    .line 1792
    goto :goto_33

    .line 1790
    :catch_16
    move-exception v2

    .line 1791
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to unlock: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v1    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1796
    :try_start_36
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    .line 1797
    .local v1, "uss":Lcom/android/server/am/UserState;
    if-eqz v1, :cond_45

    .line 1798
    iget-object v2, v1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v2, p3}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 1800
    :cond_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_dc

    .line 1802
    const/4 v0, 0x0

    if-nez v1, :cond_4d

    .line 1803
    invoke-static {p1, p3}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V

    .line 1804
    return v0

    .line 1807
    :cond_4d
    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 1808
    .local v2, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishUserUnlocking-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1809
    invoke-direct {p0, v1}, Lcom/android/server/am/UserController;->finishUserUnlocking(Lcom/android/server/am/UserState;)Z

    move-result v3

    .line 1810
    .local v3, "finishUserUnlockingResult":Z
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1811
    if-nez v3, :cond_75

    .line 1812
    invoke-static {p1, p3}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V

    .line 1813
    return v0

    .line 1821
    :cond_75
    iget-object v4, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1822
    :try_start_78
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 1823
    .local v5, "userIds":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_81
    array-length v7, v5

    if-ge v6, v7, :cond_8f

    .line 1824
    iget-object v7, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    aput v7, v5, v6

    .line 1823
    add-int/lit8 v6, v6, 0x1

    goto :goto_81

    .line 1826
    .end local v6    # "i":I
    :cond_8f
    monitor-exit v4
    :try_end_90
    .catchall {:try_start_78 .. :try_end_90} :catchall_d9

    .line 1827
    array-length v4, v5

    :goto_91
    if-ge v0, v4, :cond_d7

    aget v6, v5, v0

    .line 1828
    .local v6, "testUserId":I
    iget-object v7, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v7}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 1829
    .local v7, "parent":Landroid/content/pm/UserInfo;
    if-eqz v7, :cond_d4

    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    if-ne v8, p1, :cond_d4

    if-eq v6, p1, :cond_d4

    .line 1830
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "User "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (parent "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "): attempting unlock because parent was just unlocked"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    invoke-direct {p0, v6}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    .line 1827
    .end local v6    # "testUserId":I
    .end local v7    # "parent":Landroid/content/pm/UserInfo;
    :cond_d4
    add-int/lit8 v0, v0, 0x1

    goto :goto_91

    .line 1836
    :cond_d7
    const/4 v0, 0x1

    return v0

    .line 1826
    .end local v5    # "userIds":[I
    :catchall_d9
    move-exception v0

    :try_start_da
    monitor-exit v4
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_d9

    throw v0

    .line 1800
    .end local v1    # "uss":Lcom/android/server/am/UserState;
    .end local v2    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local v3    # "finishUserUnlockingResult":Z
    :catchall_dc
    move-exception v1

    :try_start_dd
    monitor-exit v0
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_dc

    throw v1
.end method

.method private updateCurrentProfileIds()V
    .registers 10

    .line 2415
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    .line 2417
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 2418
    .local v1, "currentProfileIds":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    array-length v4, v1

    if-ge v3, v4, :cond_26

    .line 2419
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    aput v4, v1, v3

    .line 2418
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 2421
    .end local v3    # "i":I
    :cond_26
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 2422
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v3, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2423
    :try_start_33
    iput-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 2425
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 2426
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_59

    .line 2427
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 2428
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget v6, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v7, -0x2710

    if-eq v6, v7, :cond_56

    .line 2429
    iget-object v6, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    iget v8, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2426
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 2432
    .end local v4    # "i":I
    :cond_59
    monitor-exit v3

    .line 2433
    return-void

    .line 2432
    :catchall_5b
    move-exception v4

    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_33 .. :try_end_5d} :catchall_5b

    throw v4
.end method

.method private updateStartedUserArrayLU()V
    .registers 9

    .line 2364
    const/4 v0, 0x0

    .line 2365
    .local v0, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-ge v1, v2, :cond_21

    .line 2366
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    .line 2368
    .local v2, "uss":Lcom/android/server/am/UserState;
    iget v5, v2, Lcom/android/server/am/UserState;->state:I

    if-eq v5, v4, :cond_1e

    iget v4, v2, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v3, :cond_1e

    .line 2370
    add-int/lit8 v0, v0, 0x1

    .line 2365
    .end local v2    # "uss":Lcom/android/server/am/UserState;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2373
    .end local v1    # "i":I
    :cond_21
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 2374
    const/4 v0, 0x0

    .line 2375
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_27
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4f

    .line 2376
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    .line 2377
    .restart local v2    # "uss":Lcom/android/server/am/UserState;
    iget v5, v2, Lcom/android/server/am/UserState;->state:I

    if-eq v5, v4, :cond_4c

    iget v5, v2, Lcom/android/server/am/UserState;->state:I

    if-eq v5, v3, :cond_4c

    .line 2379
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "num":I
    .local v6, "num":I
    iget-object v7, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    aput v7, v5, v0

    move v0, v6

    .line 2375
    .end local v2    # "uss":Lcom/android/server/am/UserState;
    .end local v6    # "num":I
    .restart local v0    # "num":I
    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 2382
    .end local v1    # "i":I
    :cond_4f
    return-void
.end method

.method private updateUserToLockLU(IZ)I
    .registers 8
    .param p1, "userId"    # I
    .param p2, "allowDelayedLocking"    # Z

    .line 1259
    move v0, p1

    .line 1260
    .local v0, "userIdToLock":I
    iget-boolean v1, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    if-eqz v1, :cond_9c

    if-eqz p2, :cond_9c

    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v1

    if-nez v1, :cond_9c

    .line 1261
    const-string/jumbo v1, "no_run_in_background"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_9c

    .line 1262
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1263
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1264
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 1265
    .local v1, "totalUnlockedUsers":I
    iget v2, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    const-string v3, "ActivityManager"

    if-le v1, v2, :cond_7e

    .line 1266
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1267
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishUserStopped, stopping user:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " lock user:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    .line 1271
    :cond_7e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishUserStopped, user:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", skip locking"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    const/16 v0, -0x2710

    .line 1276
    .end local v1    # "totalUnlockedUsers":I
    :cond_9c
    :goto_9c
    return v0
.end method


# virtual methods
.method canStartMoreUsers()Z
    .registers 4

    .line 545
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 546
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getRunningUsersLU()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    if-ge v1, v2, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    monitor-exit v0

    return v1

    .line 547
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method completeUserSwitch(I)V
    .registers 5
    .param p1, "newUserId"    # I

    .line 2089
    invoke-direct {p0}, Lcom/android/server/am/UserController;->isUserSwitchUiEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2091
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2093
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    new-instance v1, Lcom/android/server/am/UserController$8;

    invoke-direct {v1, p0}, Lcom/android/server/am/UserController$8;-><init>(Lcom/android/server/am/UserController;)V

    const-string v2, "User Switch"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/UserController$Injector;->dismissKeyguard(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2100
    return-void

    .line 2102
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->unfreezeScreen()V

    .line 2105
    :cond_22
    return-void
.end method

.method continueUserSwitch(Lcom/android/server/am/UserState;II)V
    .registers 9
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .line 2069
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 2070
    .local v0, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "continueUserSwitch-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-to-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2072
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/16 v2, 0x7580

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2075
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2076
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2078
    iput-boolean v3, p1, Lcom/android/server/am/UserState;->switching:Z

    .line 2079
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2080
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2081
    invoke-direct {p0, p2}, Lcom/android/server/am/UserController;->stopGuestOrEphemeralUserIfBackground(I)V

    .line 2082
    invoke-direct {p0, p2}, Lcom/android/server/am/UserController;->stopUserOnSwitchIfEnforced(I)V

    .line 2084
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2085
    return-void
.end method

.method dispatchUserSwitch(Lcom/android/server/am/UserState;II)V
    .registers 28
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .line 1993
    move-object/from16 v13, p0

    move/from16 v14, p3

    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    move-object v15, v0

    .line 1994
    .local v15, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchUserSwitch-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v12, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-to-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1996
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x757f

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1998
    iget-object v0, v13, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v11

    .line 1999
    .local v11, "observerCount":I
    if-lez v11, :cond_f7

    .line 2000
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v10, v0

    .line 2001
    .local v10, "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v1, v13, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2002
    move-object/from16 v8, p1

    :try_start_55
    iput-boolean v2, v8, Lcom/android/server/am/UserState;->switching:Z

    .line 2003
    iput-object v10, v13, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 2004
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_55 .. :try_end_5a} :catchall_ec

    .line 2005
    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v9, v11}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2006
    .local v9, "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 2007
    .local v16, "dispatchStartedTime":J
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_65
    if-ge v6, v11, :cond_e4

    .line 2008
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 2011
    .local v18, "dispatchStartedTimeForObserver":J
    :try_start_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v13, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v6}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 2012
    .local v7, "name":Ljava/lang/String;
    iget-object v1, v13, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_92} :catch_cf

    .line 2013
    :try_start_92
    invoke-virtual {v10, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2014
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_92 .. :try_end_96} :catchall_bf

    .line 2015
    :try_start_96
    new-instance v0, Lcom/android/server/am/UserController$7;
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_98} :catch_cf

    move-object v1, v0

    move-object/from16 v2, p0

    move-wide/from16 v3, v18

    move-object v5, v7

    move-object/from16 v21, v7

    move-object/from16 v20, v15

    move v15, v6

    .end local v6    # "i":I
    .end local v7    # "name":Ljava/lang/String;
    .local v15, "i":I
    .local v20, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .local v21, "name":Ljava/lang/String;
    move-wide/from16 v6, v16

    move-object v8, v10

    move-object/from16 v22, v10

    .end local v10    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v22, "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v10, p1

    move/from16 v23, v11

    .end local v11    # "observerCount":I
    .local v23, "observerCount":I
    move/from16 v11, p2

    move/from16 v12, p3

    :try_start_b0
    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/UserController$7;-><init>(Lcom/android/server/am/UserController;JLjava/lang/String;JLandroid/util/ArraySet;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/am/UserState;II)V

    .line 2046
    .local v0, "callback":Landroid/os/IRemoteCallback;
    iget-object v1, v13, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v15}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/IUserSwitchObserver;

    invoke-interface {v1, v14, v0}, Landroid/app/IUserSwitchObserver;->onUserSwitching(ILandroid/os/IRemoteCallback;)V
    :try_end_be
    .catch Landroid/os/RemoteException; {:try_start_b0 .. :try_end_be} :catch_cb

    .line 2048
    .end local v0    # "callback":Landroid/os/IRemoteCallback;
    .end local v21    # "name":Ljava/lang/String;
    goto :goto_d7

    .line 2014
    .end local v20    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local v22    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "observerCount":I
    .restart local v6    # "i":I
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v10    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "observerCount":I
    .local v15, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :catchall_bf
    move-exception v0

    move-object/from16 v21, v7

    move-object/from16 v22, v10

    move/from16 v23, v11

    move-object/from16 v20, v15

    move v15, v6

    .end local v6    # "i":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v10    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "observerCount":I
    .local v15, "i":I
    .restart local v20    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v22    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "observerCount":I
    :goto_c9
    :try_start_c9
    monitor-exit v1
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_cd

    .end local v9    # "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v15    # "i":I
    .end local v16    # "dispatchStartedTime":J
    .end local v18    # "dispatchStartedTimeForObserver":J
    .end local v20    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local v22    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "observerCount":I
    .end local p0    # "this":Lcom/android/server/am/UserController;
    .end local p1    # "uss":Lcom/android/server/am/UserState;
    .end local p2    # "oldUserId":I
    .end local p3    # "newUserId":I
    :try_start_ca
    throw v0
    :try_end_cb
    .catch Landroid/os/RemoteException; {:try_start_ca .. :try_end_cb} :catch_cb

    .line 2047
    .end local v21    # "name":Ljava/lang/String;
    .restart local v9    # "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v15    # "i":I
    .restart local v16    # "dispatchStartedTime":J
    .restart local v18    # "dispatchStartedTimeForObserver":J
    .restart local v20    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v22    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "observerCount":I
    .restart local p0    # "this":Lcom/android/server/am/UserController;
    .restart local p1    # "uss":Lcom/android/server/am/UserState;
    .restart local p2    # "oldUserId":I
    .restart local p3    # "newUserId":I
    :catch_cb
    move-exception v0

    goto :goto_d7

    .line 2014
    .restart local v21    # "name":Ljava/lang/String;
    :catchall_cd
    move-exception v0

    goto :goto_c9

    .line 2047
    .end local v20    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "observerCount":I
    .restart local v6    # "i":I
    .restart local v10    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "observerCount":I
    .local v15, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :catch_cf
    move-exception v0

    move-object/from16 v22, v10

    move/from16 v23, v11

    move-object/from16 v20, v15

    move v15, v6

    .line 2007
    .end local v6    # "i":I
    .end local v10    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "observerCount":I
    .end local v18    # "dispatchStartedTimeForObserver":J
    .local v15, "i":I
    .restart local v20    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v22    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "observerCount":I
    :goto_d7
    add-int/lit8 v6, v15, 0x1

    move-object/from16 v8, p1

    move/from16 v12, p2

    move-object/from16 v15, v20

    move-object/from16 v10, v22

    move/from16 v11, v23

    .end local v15    # "i":I
    .restart local v6    # "i":I
    goto :goto_65

    .end local v20    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local v22    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "observerCount":I
    .restart local v10    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "observerCount":I
    .local v15, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :cond_e4
    move-object/from16 v22, v10

    move/from16 v23, v11

    move-object/from16 v20, v15

    move v15, v6

    .line 2050
    .end local v6    # "i":I
    .end local v9    # "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v10    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "observerCount":I
    .end local v15    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local v16    # "dispatchStartedTime":J
    .restart local v20    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v23    # "observerCount":I
    goto :goto_102

    .line 2004
    .end local v20    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local v23    # "observerCount":I
    .restart local v10    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "observerCount":I
    .restart local v15    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :catchall_ec
    move-exception v0

    move-object/from16 v22, v10

    move/from16 v23, v11

    move-object/from16 v20, v15

    .end local v10    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "observerCount":I
    .end local v15    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v20    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v22    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "observerCount":I
    :goto_f3
    :try_start_f3
    monitor-exit v1
    :try_end_f4
    .catchall {:try_start_f3 .. :try_end_f4} :catchall_f5

    throw v0

    :catchall_f5
    move-exception v0

    goto :goto_f3

    .line 2051
    .end local v20    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local v22    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "observerCount":I
    .restart local v11    # "observerCount":I
    .restart local v15    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :cond_f7
    move/from16 v23, v11

    move-object/from16 v20, v15

    .end local v11    # "observerCount":I
    .end local v15    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v20    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v23    # "observerCount":I
    iget-object v1, v13, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2052
    :try_start_fe
    invoke-direct/range {p0 .. p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V

    .line 2053
    monitor-exit v1
    :try_end_102
    .catchall {:try_start_fe .. :try_end_102} :catchall_10b

    .line 2055
    :goto_102
    iget-object v0, v13, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2056
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2057
    return-void

    .line 2053
    :catchall_10b
    move-exception v0

    :try_start_10c
    monitor-exit v1
    :try_end_10d
    .catchall {:try_start_10c .. :try_end_10d} :catchall_10b

    throw v0
.end method

.method dispatchUserSwitchComplete(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1920
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 1921
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1922
    .local v0, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_23

    .line 1924
    :try_start_13
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IUserSwitchObserver;

    invoke-interface {v2, p1}, Landroid/app/IUserSwitchObserver;->onUserSwitchComplete(I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1e} :catch_1f

    .line 1926
    goto :goto_20

    .line 1925
    :catch_1f
    move-exception v2

    .line 1922
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1928
    .end local v1    # "i":I
    :cond_23
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1929
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2790
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2791
    :try_start_3
    const-string v1, "  mStartedUsers:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2792
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 2793
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    .line 2794
    .local v2, "uss":Lcom/android/server/am/UserState;
    const-string v3, "    User #"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2795
    iget-object v3, v2, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2796
    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2797
    const-string v3, ""

    invoke-virtual {v2, v3, p1}, Lcom/android/server/am/UserState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2792
    .end local v2    # "uss":Lcom/android/server/am/UserState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2799
    .end local v1    # "i":I
    :cond_34
    const-string v1, "  mStartedUserArray: ["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2800
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3a
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    array-length v2, v2

    if-ge v1, v2, :cond_50

    .line 2801
    if-lez v1, :cond_46

    .line 2802
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2803
    :cond_46
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2800
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 2805
    .end local v1    # "i":I
    :cond_50
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2806
    const-string v1, "  mUserLru: ["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2807
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5b
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_76

    .line 2808
    if-lez v1, :cond_6a

    .line 2809
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2810
    :cond_6a
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2807
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 2812
    .end local v1    # "i":I
    :cond_76
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2813
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-lez v1, :cond_b0

    .line 2814
    const-string v1, "  mUserProfileGroupIds:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2815
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_89
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_b0

    .line 2816
    const-string v2, "    User #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2817
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2818
    const-string v2, " -> profile #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2819
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2815
    add-int/lit8 v1, v1, 0x1

    goto :goto_89

    .line 2822
    .end local v1    # "i":I
    :cond_b0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurrentUserId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTargetUserId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastActiveUsers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2825
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDelayUserDataLocking:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  shouldStopUserOnSwitch():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/am/UserController;->shouldStopUserOnSwitch()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStopUserOnSwitch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/UserController;->mStopUserOnSwitch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMaxRunningUsers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2829
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUserSwitchUiEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2831
    iget-object v1, p0, Lcom/android/server/am/UserController;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    if-eqz v1, :cond_1a6

    .line 2832
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSwitchingFromSystemUserMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/UserController;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2834
    :cond_1a6
    iget-object v1, p0, Lcom/android/server/am/UserController;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    if-eqz v1, :cond_1c2

    .line 2835
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSwitchingToSystemUserMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/UserController;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2837
    :cond_1c2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastUserUnlockingUptime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/UserController;->mLastUserUnlockingUptime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2838
    monitor-exit v0

    .line 2839
    return-void

    .line 2838
    :catchall_1dc
    move-exception v1

    monitor-exit v0
    :try_end_1de
    .catchall {:try_start_3 .. :try_end_1de} :catchall_1dc

    throw v1
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 15
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 2760
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2761
    :try_start_3
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 2762
    .local v1, "token":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const-wide v5, 0x10500000001L

    if-ge v3, v4, :cond_3d

    .line 2763
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UserState;

    .line 2764
    .local v4, "uss":Lcom/android/server/am/UserState;
    const-wide v7, 0x20b00000001L

    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 2765
    .local v7, "uToken":J
    iget-object v9, v4, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-virtual {p1, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2766
    const-wide v5, 0x10b00000002L

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/am/UserState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2767
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2762
    .end local v4    # "uss":Lcom/android/server/am/UserState;
    .end local v7    # "uToken":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 2769
    .end local v3    # "i":I
    :cond_3d
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3e
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    array-length v7, v4

    if-ge v3, v7, :cond_50

    .line 2770
    const-wide v7, 0x20500000002L

    aget v4, v4, v3

    invoke-virtual {p1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2769
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 2772
    .end local v3    # "i":I
    :cond_50
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_51
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_70

    .line 2773
    const-wide v7, 0x20500000003L

    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2772
    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    .line 2775
    .end local v3    # "i":I
    :cond_70
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-lez v3, :cond_a7

    .line 2776
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_79
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_a7

    .line 2777
    const-wide v7, 0x20b00000004L

    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 2778
    .restart local v7    # "uToken":J
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 2779
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 2778
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2780
    const-wide v9, 0x10500000002L

    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 2781
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 2780
    invoke-virtual {p1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2782
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2776
    .end local v7    # "uToken":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_79

    .line 2785
    .end local v3    # "i":I
    :cond_a7
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2786
    .end local v1    # "token":J
    monitor-exit v0

    .line 2787
    return-void

    .line 2786
    :catchall_ac
    move-exception v1

    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_3 .. :try_end_ae} :catchall_ac

    throw v1
.end method

.method ensureNotSpecialUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 2329
    if-ltz p1, :cond_3

    .line 2330
    return-void

    .line 2332
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call does not support special user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method exists(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 2607
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    return v0
.end method

.method expandUserId(I)[I
    .registers 4
    .param p1, "userId"    # I

    .line 2599
    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    .line 2600
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-object v0

    .line 2602
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v0

    return-object v0
.end method

.method finishUserStopped(Lcom/android/server/am/UserState;Z)V
    .registers 16
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "allowDelayedLocking"    # Z

    .line 1145
    iget-object v0, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1146
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v1, :cond_22

    .line 1147
    const-string v1, "ActivityManager"

    const-string v4, "finishUserStopped(%d): allowDelayedLocking=%b"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x1

    .line 1148
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1147
    invoke-static {v1, v4, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1151
    :cond_22
    const/16 v1, 0x757a

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1153
    const/4 v1, 0x1

    .line 1156
    .local v1, "lockUser":Z
    move v4, v0

    .line 1158
    .local v4, "userIdToLock":I
    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 1159
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1160
    :try_start_30
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p1, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1161
    .local v7, "stopCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IStopUserCallback;>;"
    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, p1, Lcom/android/server/am/UserState;->mKeyEvictedCallbacks:Ljava/util/ArrayList;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1162
    .local v8, "keyEvictedCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState$KeyEvictedCallback;>;"
    iget-object v9, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, p1, :cond_94

    iget v9, p1, Lcom/android/server/am/UserState;->state:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_4c

    goto :goto_94

    .line 1165
    :cond_4c
    const/4 v9, 0x1

    .line 1167
    .local v9, "stopped":Z
    iget-object v10, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1168
    iget-object v10, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1169
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 1170
    if-eqz p2, :cond_89

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_89

    .line 1171
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Delayed locking enabled while KeyEvictedCallbacks not empty, userId:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " callbacks:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const/4 p2, 0x0

    .line 1176
    :cond_89
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/UserController;->updateUserToLockLU(IZ)I

    move-result v10

    move v4, v10

    .line 1177
    const/16 v10, -0x2710

    if-ne v4, v10, :cond_95

    .line 1178
    const/4 v1, 0x0

    goto :goto_95

    .line 1163
    .end local v9    # "stopped":Z
    :cond_94
    :goto_94
    const/4 v9, 0x0

    .line 1181
    .restart local v9    # "stopped":Z
    :cond_95
    :goto_95
    monitor-exit v6
    :try_end_96
    .catchall {:try_start_30 .. :try_end_96} :catchall_fb

    .line 1182
    if-eqz v9, :cond_ab

    .line 1183
    iget-object v6, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v6}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/pm/UserManagerInternal;->removeUserState(I)V

    .line 1184
    iget-object v6, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v6, v0}, Lcom/android/server/am/UserController$Injector;->activityManagerOnUserStopped(I)V

    .line 1187
    const-string v6, "finish user"

    invoke-direct {p0, v0, v6}, Lcom/android/server/am/UserController;->forceStopUser(ILjava/lang/String;)V

    .line 1190
    :cond_ab
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_af
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/IStopUserCallback;

    .line 1192
    .local v10, "callback":Landroid/app/IStopUserCallback;
    if-eqz v9, :cond_c1

    :try_start_bd
    invoke-interface {v10, v0}, Landroid/app/IStopUserCallback;->userStopped(I)V

    goto :goto_c4

    .line 1193
    :cond_c1
    invoke-interface {v10, v0}, Landroid/app/IStopUserCallback;->userStopAborted(I)V
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_bd .. :try_end_c4} :catch_c5

    .line 1195
    :goto_c4
    goto :goto_c6

    .line 1194
    :catch_c5
    move-exception v11

    .line 1196
    .end local v10    # "callback":Landroid/app/IStopUserCallback;
    :goto_c6
    goto :goto_af

    .line 1198
    :cond_c7
    const/4 v6, 0x7

    if-eqz v9, :cond_f4

    .line 1199
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2, v0}, Lcom/android/server/am/UserController$Injector;->systemServiceManagerOnUserStopped(I)V

    .line 1200
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2, v0}, Lcom/android/server/am/UserController$Injector;->taskSupervisorRemoveUser(I)V

    .line 1203
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v2

    if-eqz v2, :cond_e7

    iget-boolean v2, v5, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v2, :cond_e7

    .line 1204
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->removeUserEvenWhenDisallowed(I)Z

    .line 1207
    :cond_e7
    invoke-direct {p0, v0, v6, v3}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 1209
    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->clearSessionId(I)V

    .line 1211
    if-nez v1, :cond_f0

    .line 1212
    return-void

    .line 1214
    :cond_f0
    invoke-direct {p0, v4, v8}, Lcom/android/server/am/UserController;->dispatchUserLocking(ILjava/util/List;)V

    goto :goto_fa

    .line 1216
    :cond_f4
    invoke-direct {p0, v0, v6, v2}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 1218
    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->clearSessionId(I)V

    .line 1220
    :goto_fa
    return-void

    .line 1181
    .end local v7    # "stopCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IStopUserCallback;>;"
    .end local v8    # "keyEvictedCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState$KeyEvictedCallback;>;"
    .end local v9    # "stopped":Z
    :catchall_fb
    move-exception v2

    :try_start_fc
    monitor-exit v6
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_fb

    throw v2
.end method

.method finishUserSwitch(Lcom/android/server/am/UserState;)V
    .registers 4
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .line 486
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 493
    return-void
.end method

.method getCurrentOrTargetUserId()I
    .registers 3

    .line 2553
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2554
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    move-result v1

    monitor-exit v0

    return v1

    .line 2555
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method getCurrentProfileIds()[I
    .registers 3

    .line 2669
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2670
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    monitor-exit v0

    return-object v1

    .line 2671
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getCurrentUser()Landroid/content/pm/UserInfo;
    .registers 3

    .line 2520
    invoke-direct {p0}, Lcom/android/server/am/UserController;->checkGetCurrentUserPermissions()V

    .line 2524
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_10

    .line 2525
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0

    .line 2527
    :cond_10
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2528
    :try_start_13
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getCurrentUserLU()Landroid/content/pm/UserInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2529
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method getCurrentUserId()I
    .registers 3

    .line 2569
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2570
    :try_start_3
    iget v1, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    monitor-exit v0

    return v1

    .line 2571
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getCurrentUserIdChecked()I
    .registers 3

    .line 2536
    invoke-direct {p0}, Lcom/android/server/am/UserController;->checkGetCurrentUserPermissions()V

    .line 2540
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_c

    .line 2541
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    return v0

    .line 2543
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserId()I

    move-result v0

    return v0
.end method

.method public getLastUserUnlockingUptime()J
    .registers 3

    .line 3167
    iget-wide v0, p0, Lcom/android/server/am/UserController;->mLastUserUnlockingUptime:J

    return-wide v0
.end method

.method getMaxRunningUsers()I
    .registers 3

    .line 451
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 452
    :try_start_3
    iget v1, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    monitor-exit v0

    return v1

    .line 453
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getRunningUsersLU()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .local v0, "runningUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 500
    .local v2, "userId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 501
    .local v3, "uss":Lcom/android/server/am/UserState;
    if-nez v3, :cond_26

    .line 503
    goto :goto_b

    .line 505
    :cond_26
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_b

    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_31

    .line 508
    goto :goto_b

    .line 510
    :cond_31
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_42

    .line 512
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/content/pm/UserInfo;->isSystemOnly(I)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 513
    goto :goto_b

    .line 516
    :cond_42
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    .end local v2    # "userId":Ljava/lang/Integer;
    .end local v3    # "uss":Lcom/android/server/am/UserState;
    goto :goto_b

    .line 518
    :cond_46
    return-object v0
.end method

.method getStartedUserArray()[I
    .registers 3

    .line 2436
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2437
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    monitor-exit v0

    return-object v1

    .line 2438
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getStartedUserState(I)Lcom/android/server/am/UserState;
    .registers 4
    .param p1, "userId"    # I

    .line 2351
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2352
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    monitor-exit v0

    return-object v1

    .line 2353
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method getSwitchingFromSystemUserMessage()Ljava/lang/String;
    .registers 2

    .line 2727
    const-string/jumbo v0, "getSwitchingFromSystemUserMessage()"

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->checkHasManageUsersPermission(Ljava/lang/String;)V

    .line 2729
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getSwitchingFromSystemUserMessageUnchecked()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSwitchingToSystemUserMessage()Ljava/lang/String;
    .registers 2

    .line 2734
    const-string/jumbo v0, "getSwitchingToSystemUserMessage()"

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->checkHasManageUsersPermission(Ljava/lang/String;)V

    .line 2736
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getSwitchingToSystemUserMessageUnchecked()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getUserIds()[I
    .registers 2

    .line 2589
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    return-object v0
.end method

.method getUsers()[I
    .registers 4

    .line 2580
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    .line 2581
    .local v0, "ums":Lcom/android/server/pm/UserManagerService;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    goto :goto_13

    :cond_d
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    :goto_13
    return-object v1
.end method

.method handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I
    .registers 25
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "allowAll"    # Z
    .param p5, "allowMode"    # I
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "callerPackage"    # Ljava/lang/String;

    .line 2216
    move-object/from16 v6, p0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p5

    move-object/from16 v10, p7

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 2217
    .local v11, "callingUserId":I
    if-ne v11, v8, :cond_11

    .line 2218
    return v8

    .line 2227
    :cond_11
    invoke-virtual {v6, v8}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUser(I)I

    move-result v12

    .line 2229
    .local v12, "targetUserId":I
    const/4 v13, 0x3

    if-eqz v7, :cond_103

    const/16 v0, 0x3e8

    if-eq v7, v0, :cond_103

    .line 2231
    invoke-virtual {v6, v11, v12}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    move-result v14

    .line 2232
    .local v14, "isSameProfileGroup":Z
    iget-object v0, v6, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0, v7}, Lcom/android/server/am/UserController$Injector;->isCallerRecents(I)Z

    move-result v0

    const/4 v5, 0x2

    if-eqz v0, :cond_2f

    if-eqz v14, :cond_2f

    .line 2235
    const/4 v0, 0x1

    move v15, v5

    .local v0, "allow":Z
    goto/16 :goto_92

    .line 2236
    .end local v0    # "allow":Z
    :cond_2f
    iget-object v0, v6, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v4, -0x1

    const/16 v16, 0x1

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    move/from16 v2, p1

    move/from16 v3, p2

    move v15, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController$Injector;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-nez v0, :cond_45

    .line 2239
    const/4 v0, 0x1

    .restart local v0    # "allow":Z
    goto :goto_92

    .line 2240
    .end local v0    # "allow":Z
    :cond_45
    if-ne v9, v15, :cond_49

    .line 2242
    const/4 v0, 0x0

    .restart local v0    # "allow":Z
    goto :goto_92

    .line 2243
    .end local v0    # "allow":Z
    :cond_49
    move-object/from16 v0, p0

    move/from16 v1, p5

    move v2, v14

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/UserController;->canInteractWithAcrossProfilesPermission(IZIILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 2245
    const/4 v0, 0x1

    .restart local v0    # "allow":Z
    goto :goto_92

    .line 2246
    .end local v0    # "allow":Z
    :cond_5c
    iget-object v0, v6, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v4, -0x1

    const/4 v5, 0x1

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController$Injector;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-eqz v0, :cond_6e

    .line 2249
    const/4 v0, 0x0

    .restart local v0    # "allow":Z
    goto :goto_92

    .line 2250
    .end local v0    # "allow":Z
    :cond_6e
    if-eqz v9, :cond_91

    if-ne v9, v13, :cond_73

    goto :goto_91

    .line 2253
    :cond_73
    const/4 v0, 0x1

    if-ne v9, v0, :cond_78

    .line 2256
    move v0, v14

    .restart local v0    # "allow":Z
    goto :goto_92

    .line 2258
    .end local v0    # "allow":Z
    :cond_78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2252
    :cond_91
    :goto_91
    const/4 v0, 0x1

    .line 2260
    .restart local v0    # "allow":Z
    :goto_92
    if-nez v0, :cond_100

    .line 2261
    const/4 v1, -0x3

    if-ne v8, v1, :cond_9b

    .line 2264
    move v12, v11

    move-object/from16 v2, p6

    goto :goto_105

    .line 2266
    :cond_9b
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2267
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v2, "Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2268
    move-object/from16 v2, p6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2269
    if-eqz v10, :cond_b6

    .line 2270
    const-string v3, " from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2271
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2273
    :cond_b6
    const-string v3, " asks to run as user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2274
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2275
    const-string v3, " but is calling from uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2276
    invoke-static {v1, v7}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 2277
    const-string v3, "; this requires "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2278
    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2279
    if-eq v9, v15, :cond_f1

    .line 2280
    const-string v3, " or "

    if-eqz v9, :cond_dd

    if-eq v9, v13, :cond_dd

    const/4 v4, 0x1

    if-ne v9, v4, :cond_e5

    if-eqz v14, :cond_e5

    .line 2283
    :cond_dd
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2284
    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2286
    :cond_e5
    if-eqz v14, :cond_f1

    if-ne v9, v13, :cond_f1

    .line 2287
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2288
    const-string v3, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2291
    :cond_f1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2292
    .local v3, "msg":Ljava/lang/String;
    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2260
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "msg":Ljava/lang/String;
    :cond_100
    move-object/from16 v2, p6

    goto :goto_105

    .line 2229
    .end local v0    # "allow":Z
    .end local v14    # "isSameProfileGroup":Z
    :cond_103
    move-object/from16 v2, p6

    .line 2297
    :goto_105
    if-nez p4, :cond_10a

    .line 2298
    invoke-virtual {v6, v12}, Lcom/android/server/am/UserController;->ensureNotSpecialUser(I)V

    .line 2301
    :cond_10a
    const/16 v0, 0x7d0

    if-ne v7, v0, :cond_141

    if-ltz v12, :cond_141

    .line 2302
    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {v6, v0, v12}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_11a

    goto :goto_141

    .line 2303
    :cond_11a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shell does not have permission to access user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2304
    invoke-static {v13}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2307
    :cond_141
    :goto_141
    return v12
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 2843
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    const/16 v2, 0x1388

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_18a

    goto/16 :goto_188

    .line 2943
    :sswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 2944
    .local v0, "fromToUserPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/am/UserController;->logUserJourneyInfo(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;I)V

    .line 2946
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v1, v4, v4}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 2948
    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->showUserSwitchDialog(Landroid/util/Pair;)V

    .line 2949
    goto/16 :goto_188

    .line 2951
    .end local v0    # "fromToUserPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    :sswitch_29
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->logAndClearSessionId(I)V

    .line 2952
    goto/16 :goto_188

    .line 2928
    :sswitch_30
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->reportOnUserCompletedEvent(Ljava/lang/Integer;)V

    .line 2929
    goto/16 :goto_188

    .line 2954
    :sswitch_39
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->completeUserSwitch(I)V

    goto/16 :goto_188

    .line 2845
    :sswitch_40
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/am/UserController;->logUserJourneyInfo(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;I)V

    .line 2847
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v4, v4}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 2849
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->startUserInForeground(I)V

    .line 2850
    goto/16 :goto_188

    .line 2940
    :sswitch_5d
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->dispatchLockedBootComplete(I)V

    .line 2941
    goto/16 :goto_188

    .line 2902
    :sswitch_64
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->onUserUnlocked(I)V

    .line 2903
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2909
    iget v4, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_78

    goto :goto_7a

    :cond_78
    const/16 v2, 0x3e8

    .line 2903
    :goto_7a
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/server/am/UserController;->scheduleOnUserCompletedEvent(III)V

    .line 2910
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 2912
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->clearSessionId(I)V

    .line 2913
    goto/16 :goto_188

    .line 2885
    :sswitch_89
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2886
    .local v0, "userId":I
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemServiceManager;->onUserUnlocking(I)V

    .line 2888
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v5, Lcom/android/server/am/UserController$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0, v0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/am/UserController;I)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2891
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x5

    invoke-direct {p0, v2, v5, v3}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 2893
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2, v1, v4}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 2896
    new-instance v1, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 2897
    .local v1, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishUserUnlocked-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2898
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/UserState;

    invoke-direct {p0, v2}, Lcom/android/server/am/UserController;->finishUserUnlocked(Lcom/android/server/am/UserState;)V

    .line 2899
    invoke-virtual {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2900
    goto/16 :goto_188

    .line 2861
    .end local v0    # "userId":I
    .end local v1    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :sswitch_d2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/UserController;->timeoutUserSwitchCallbacks(II)V

    .line 2862
    goto/16 :goto_188

    .line 2934
    :sswitch_db
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->dispatchUserSwitchComplete(I)V

    .line 2936
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v4, v3}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 2938
    goto/16 :goto_188

    .line 2931
    :sswitch_e7
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->dispatchForegroundProfileChanged(I)V

    .line 2932
    goto/16 :goto_188

    .line 2915
    :sswitch_ee
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v1, 0x4008

    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 2917
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 2915
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 2918
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const v1, 0x8008

    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 2920
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 2918
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 2922
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v3}, Lcom/android/server/SystemServiceManager;->onUserSwitching(II)V

    .line 2923
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/UserController;->scheduleOnUserCompletedEvent(III)V

    .line 2926
    goto :goto_188

    .line 2867
    :sswitch_121
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const v1, 0x8007

    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 2869
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 2867
    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 2870
    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const/4 v5, 0x3

    invoke-direct {p0, v0, v1, v5}, Lcom/android/server/am/UserController;->logUserJourneyInfo(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;I)V

    .line 2871
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 2874
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    .line 2875
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v1

    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 2874
    invoke-virtual {v0, v1, v6}, Lcom/android/server/SystemServiceManager;->onUserStarting(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 2876
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v4, v2}, Lcom/android/server/am/UserController;->scheduleOnUserCompletedEvent(III)V

    .line 2880
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v3, v3}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 2882
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v5}, Lcom/android/server/am/UserController;->clearSessionId(II)V

    .line 2883
    goto :goto_188

    .line 2864
    :sswitch_160
    invoke-direct {p0}, Lcom/android/server/am/UserController;->startProfiles()V

    .line 2865
    goto :goto_188

    .line 2858
    :sswitch_164
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/UserController;->timeoutUserSwitch(Lcom/android/server/am/UserState;II)V

    .line 2859
    goto :goto_188

    .line 2855
    :sswitch_170
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/UserController;->continueUserSwitch(Lcom/android/server/am/UserState;II)V

    .line 2856
    goto :goto_188

    .line 2852
    :sswitch_17c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/UserController;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V

    .line 2853
    nop

    .line 2957
    :goto_188
    const/4 v0, 0x0

    return v0

    :sswitch_data_18a
    .sparse-switch
        0xa -> :sswitch_17c
        0x14 -> :sswitch_170
        0x1e -> :sswitch_164
        0x28 -> :sswitch_160
        0x32 -> :sswitch_121
        0x3c -> :sswitch_ee
        0x46 -> :sswitch_e7
        0x50 -> :sswitch_db
        0x5a -> :sswitch_d2
        0x64 -> :sswitch_89
        0x69 -> :sswitch_64
        0x6e -> :sswitch_5d
        0x78 -> :sswitch_40
        0x82 -> :sswitch_39
        0x8c -> :sswitch_30
        0xc8 -> :sswitch_29
        0x3e8 -> :sswitch_c
    .end sparse-switch
.end method

.method hasStartedUserState(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 2357
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2358
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 2359
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method hasUserRestriction(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2632
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method isCurrentProfile(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 2663
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2664
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2665
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method isLockScreenDisabled(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 2710
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    return v0
.end method

.method isSameProfileGroup(II)Z
    .registers 8
    .param p1, "callingUserId"    # I
    .param p2, "targetUserId"    # I

    .line 2636
    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    .line 2637
    return v0

    .line 2639
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2640
    :try_start_7
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 2642
    .local v2, "callingProfile":I
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 2644
    .local v4, "targetProfile":I
    if-eq v2, v3, :cond_1a

    if-ne v2, v4, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    monitor-exit v1

    return v0

    .line 2646
    .end local v2    # "callingProfile":I
    .end local v4    # "targetProfile":I
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method isSystemUserStarted()Z
    .registers 7

    .line 2494
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2495
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    .line 2496
    .local v1, "uss":Lcom/android/server/am/UserState;
    if-nez v1, :cond_10

    .line 2497
    monitor-exit v0

    return v2

    .line 2499
    :cond_10
    iget v3, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1f

    iget v3, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1f

    iget v3, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_20

    :cond_1f
    move v2, v4

    :cond_20
    monitor-exit v0

    return v2

    .line 2502
    .end local v1    # "uss":Lcom/android/server/am/UserState;
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method isUserOrItsParentRunning(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 2650
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2651
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2652
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 2654
    :cond_d
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 2655
    .local v2, "parentUserId":I
    if-ne v2, v3, :cond_19

    .line 2656
    monitor-exit v0

    return v1

    .line 2658
    :cond_19
    invoke-virtual {p0, v2, v1}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2659
    .end local v2    # "parentUserId":I
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method isUserRunning(II)Z
    .registers 8
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    .line 2442
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v0

    .line 2443
    .local v0, "state":Lcom/android/server/am/UserState;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2444
    return v1

    .line 2446
    :cond_8
    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    .line 2447
    return v3

    .line 2449
    :cond_e
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_19

    .line 2450
    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    packed-switch v2, :pswitch_data_46

    .line 2455
    return v1

    .line 2453
    :pswitch_18
    return v3

    .line 2458
    :cond_19
    and-int/lit8 v2, p2, 0x8

    if-eqz v2, :cond_29

    .line 2459
    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    packed-switch v2, :pswitch_data_4e

    .line 2468
    return v1

    .line 2466
    :pswitch_23
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    return v1

    .line 2462
    :pswitch_28
    return v3

    .line 2471
    :cond_29
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_39

    .line 2472
    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    packed-switch v2, :pswitch_data_5a

    .line 2480
    return v1

    .line 2478
    :pswitch_33
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    return v1

    .line 2474
    :pswitch_38
    return v3

    .line 2484
    :cond_39
    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_44

    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x5

    if-eq v2, v4, :cond_44

    move v1, v3

    :cond_44
    return v1

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_18
        :pswitch_18
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x2
        :pswitch_28
        :pswitch_28
        :pswitch_23
        :pswitch_23
    .end packed-switch

    :pswitch_data_5a
    .packed-switch 0x3
        :pswitch_38
        :pswitch_33
        :pswitch_33
    .end packed-switch
.end method

.method synthetic lambda$dispatchUserLocking$11$com-android-server-am-UserController(ILjava/util/List;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "keyEvictedCallbacks"    # Ljava/util/List;

    .line 1228
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1229
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 1230
    const-string v1, "ActivityManager"

    const-string v2, "User was restarted, skipping key eviction"

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    monitor-exit v0

    return-void

    .line 1233
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_3c

    .line 1235
    :try_start_15
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->lockUserKey(I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_36

    .line 1238
    nop

    .line 1239
    if-nez p2, :cond_22

    .line 1240
    return-void

    .line 1242
    :cond_22
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 1243
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState$KeyEvictedCallback;

    invoke-interface {v1, p1}, Lcom/android/server/am/UserState$KeyEvictedCallback;->keyEvicted(I)V

    .line 1242
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 1245
    .end local v0    # "i":I
    :cond_35
    return-void

    .line 1236
    :catch_36
    move-exception v0

    .line 1237
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1233
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method synthetic lambda$finishUserStopping$10$com-android-server-am-UserController(Lcom/android/server/am/UserState;Z)V
    .registers 5
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "allowDelayedLocking"    # Z

    .line 1120
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$finishUserStopping$9$com-android-server-am-UserController(Lcom/android/server/am/UserState;Z)V
    .registers 3
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "allowDelayedLocking"    # Z

    .line 1120
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->finishUserStopped(Lcom/android/server/am/UserState;Z)V

    return-void
.end method

.method synthetic lambda$finishUserSwitch$0$com-android-server-am-UserController(Lcom/android/server/am/UserState;)V
    .registers 4
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .line 487
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V

    .line 488
    invoke-direct {p0}, Lcom/android/server/am/UserController;->startProfiles()V

    .line 489
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 490
    :try_start_9
    iget v1, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    invoke-direct {p0, v1}, Lcom/android/server/am/UserController;->stopRunningUsersLU(I)V

    .line 491
    monitor-exit v0

    .line 492
    return-void

    .line 491
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw v1
.end method

.method synthetic lambda$finishUserUnlocked$2$com-android-server-am-UserController(Lcom/android/server/am/UserState;)V
    .registers 2
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .line 783
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V

    return-void
.end method

.method synthetic lambda$finishUserUnlockedCompleted$3$com-android-server-am-UserController(Landroid/content/pm/UserInfo;)V
    .registers 4
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .line 806
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService;->makeInitialized(I)V

    return-void
.end method

.method synthetic lambda$finishUserUnlockedCompleted$4$com-android-server-am-UserController(Landroid/content/Intent;III)V
    .registers 24
    .param p1, "bootIntent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v17, p2

    move/from16 v15, p3

    move/from16 v16, p4

    .line 864
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    new-instance v3, Lcom/android/server/am/UserController$2;

    move-object v4, v3

    move/from16 v14, p2

    invoke-direct {v3, v0, v14}, Lcom/android/server/am/UserController$2;-><init>(Lcom/android/server/am/UserController;I)V

    const-string v3, "android.permission.RECEIVE_BOOT_COMPLETED"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    .line 877
    const/16 v3, 0xc8

    invoke-direct {v0, v3}, Lcom/android/server/am/UserController;->getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    sget v13, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 864
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v18, 0x3e8

    move/from16 v14, v18

    invoke-virtual/range {v1 .. v17}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 879
    return-void
.end method

.method synthetic lambda$finishUserUnlocking$1$com-android-server-am-UserController(ILcom/android/server/am/UserState;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    .line 665
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 666
    const-string v0, "ActivityManager"

    const-string v1, "User key got locked unexpectedly, leaving user locked."

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-void

    .line 670
    :cond_e
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 671
    .local v0, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UM.onBeforeUnlockUser-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 672
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService;->onBeforeUnlockUser(I)V

    .line 673
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 674
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 676
    const/4 v2, 0x1

    const/4 v3, 0x2

    :try_start_3a
    invoke-virtual {p2, v2, v3}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v2

    if-nez v2, :cond_42

    .line 677
    monitor-exit v1

    return-void

    .line 679
    :cond_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_68

    .line 680
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    iget v2, p2, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 682
    iget-object v1, p2, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/internal/util/ProgressReporter;->setProgress(I)V

    .line 684
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/UserController;->mLastUserUnlockingUptime:J

    .line 688
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 689
    return-void

    .line 679
    :catchall_68
    move-exception v2

    :try_start_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v2
.end method

.method synthetic lambda$handleMessage$14$com-android-server-am-UserController(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 2889
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController$Injector;->loadUserRecents(I)V

    .line 2890
    return-void
.end method

.method synthetic lambda$scheduleStartProfiles$12$com-android-server-am-UserController()V
    .registers 5

    .line 1368
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1369
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1372
    :cond_15
    return-void
.end method

.method synthetic lambda$startUserInternal$13$com-android-server-am-UserController(IZLandroid/os/IProgressListener;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z
    .param p3, "unlockListener"    # Landroid/os/IProgressListener;

    .line 1575
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->startUser(IZLandroid/os/IProgressListener;)Z

    return-void
.end method

.method synthetic lambda$stopSingleUserLU$6$com-android-server-am-UserController(ILcom/android/server/am/UserState;Z)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;
    .param p3, "allowDelayedLockingCopied"    # Z

    .line 1062
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->finishUserStopping(ILcom/android/server/am/UserState;Z)V

    return-void
.end method

.method synthetic lambda$stopSingleUserLU$7$com-android-server-am-UserController(ILcom/android/server/am/UserState;Z)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;
    .param p3, "allowDelayedLockingCopied"    # Z

    .line 1062
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$stopSingleUserLU$8$com-android-server-am-UserController(ILjava/lang/Runnable;)V
    .registers 24
    .param p1, "userId"    # I
    .param p2, "finishUserStoppingAsync"    # Ljava/lang/Runnable;

    .line 1074
    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_STOPPING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "stoppingIntent":Landroid/content/Intent;
    move-object v5, v2

    .line 1075
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1076
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1077
    const-string v3, "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1079
    new-instance v7, Lcom/android/server/am/UserController$4;

    move-object/from16 v3, p2

    invoke-direct {v7, v0, v3}, Lcom/android/server/am/UserController$4;-><init>(Lcom/android/server/am/UserController;Ljava/lang/Runnable;)V

    .line 1088
    .local v7, "stoppingReceiver":Landroid/content/IIntentReceiver;
    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4, v1}, Lcom/android/server/am/UserController$Injector;->clearBroadcastQueueForUser(I)V

    .line 1090
    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v6, "android.permission.INTERACT_ACROSS_USERS"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1093
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    .line 1094
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v19

    .line 1090
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    const/16 v20, -0x1

    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 1095
    return-void
.end method

.method onSystemReady()V
    .registers 2

    .line 2405
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIds()V

    .line 2406
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->reportCurWakefulnessUsageEvent()V

    .line 2407
    return-void
.end method

.method onUserRemoved(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 2675
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2676
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 2677
    .local v1, "size":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_b
    if-ltz v2, :cond_25

    .line 2678
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-eq v3, p1, :cond_1d

    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 2679
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-ne v3, p1, :cond_22

    .line 2680
    :cond_1d
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 2677
    :cond_22
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 2684
    .end local v2    # "i":I
    :cond_25
    iget-object v2, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-static {v2, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 2685
    .end local v1    # "size":I
    monitor-exit v0

    .line 2686
    return-void

    .line 2685
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    .registers 5
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;
    .param p2, "name"    # Ljava/lang/String;

    .line 2336
    const-string v0, "Observer name cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2337
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v1, "registerUserSwitchObserver"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/UserController;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2338
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 2339
    return-void
.end method

.method reportOnUserCompletedEvent(Ljava/lang/Integer;)V
    .registers 10
    .param p1, "userId"    # Ljava/lang/Integer;

    .line 2996
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 2999
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 3000
    :try_start_a
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 3001
    .local v1, "eventTypes":I
    iget-object v2, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->delete(I)V

    .line 3002
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_74

    .line 3005
    const/4 v0, 0x0

    .line 3006
    .local v0, "eligibleEventTypes":I
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3007
    :try_start_23
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UserState;

    .line 3008
    .local v4, "uss":Lcom/android/server/am/UserState;
    if-eqz v4, :cond_38

    iget v5, v4, Lcom/android/server/am/UserState;->state:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_38

    .line 3009
    or-int/lit8 v0, v0, 0x1

    .line 3011
    :cond_38
    const/4 v5, 0x3

    if-eqz v4, :cond_41

    iget v6, v4, Lcom/android/server/am/UserState;->state:I

    if-ne v6, v5, :cond_41

    .line 3012
    or-int/lit8 v0, v0, 0x2

    .line 3014
    :cond_41
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-ne v6, v7, :cond_4b

    .line 3015
    or-int/lit8 v0, v0, 0x4

    .line 3017
    .end local v4    # "uss":Lcom/android/server/am/UserState;
    :cond_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_23 .. :try_end_4c} :catchall_71

    .line 3018
    const-string v2, "ActivityManager"

    const-string/jumbo v4, "reportOnUserCompletedEvent(%d): stored=%s, eligible=%s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    .line 3019
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v5, v6

    .line 3018
    invoke-static {v2, v4, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3020
    and-int/2addr v1, v0

    .line 3022
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/UserController$Injector;->systemServiceManagerOnUserCompletedEvent(II)V

    .line 3023
    return-void

    .line 3017
    :catchall_71
    move-exception v3

    :try_start_72
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v3

    .line 3002
    .end local v0    # "eligibleEventTypes":I
    .end local v1    # "eventTypes":I
    :catchall_74
    move-exception v1

    :try_start_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v1
.end method

.method restartUser(IZ)I
    .registers 9
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z

    .line 885
    new-instance v5, Lcom/android/server/am/UserController$3;

    invoke-direct {v5, p0, p2}, Lcom/android/server/am/UserController$3;-><init>(Lcom/android/server/am/UserController;Z)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->stopUser(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result v0

    return v0
.end method

.method scheduleOnUserCompletedEvent(III)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "eventType"    # I
    .param p3, "delayMs"    # I

    .line 2974
    if-eqz p2, :cond_15

    .line 2975
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 2976
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    or-int/2addr v2, p2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2977
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v1

    .line 2980
    :cond_15
    :goto_15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2981
    .local v0, "msgObj":Ljava/lang/Object;
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8c

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 2982
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 2983
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, p3

    .line 2982
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2985
    return-void
.end method

.method scheduleStartProfiles()V
    .registers 3

    .line 1367
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/am/UserController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1373
    return-void
.end method

.method sendBootCompleted(Landroid/content/IIntentReceiver;)V
    .registers 6
    .param p1, "resultTo"    # Landroid/content/IIntentReceiver;

    .line 2387
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2388
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 2389
    .local v1, "startedUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/UserState;>;"
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_37

    .line 2390
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_36

    .line 2391
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    .line 2392
    .local v2, "uss":Lcom/android/server/am/UserState;
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v3

    if-nez v3, :cond_21

    .line 2393
    invoke-direct {p0, v2, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    goto :goto_33

    .line 2394
    :cond_21
    iget-object v3, v2, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 2398
    iget-object v3, v2, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/UserController;->sendLockedBootCompletedBroadcast(Landroid/content/IIntentReceiver;I)V

    .line 2399
    return-void

    .line 2390
    .end local v2    # "uss":Lcom/android/server/am/UserState;
    :cond_33
    :goto_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 2402
    .end local v0    # "i":I
    :cond_36
    return-void

    .line 2389
    .end local v1    # "startedUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/UserState;>;"
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v1
.end method

.method sendForegroundProfileChanged(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 2342
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2343
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2344
    return-void
.end method

.method sendUserSwitchBroadcasts(II)V
    .registers 42
    .param p1, "oldUserId"    # I
    .param p2, "newUserId"    # I

    .line 2134
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    .line 2135
    .local v21, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    .line 2136
    .local v22, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v23

    .line 2139
    .local v23, "ident":J
    const/4 v0, 0x0

    const-string v15, "android.intent.extra.USER"

    const-string v14, "android.intent.extra.user_handle"

    const/high16 v13, 0x50000000

    if-ltz v2, :cond_ab

    .line 2141
    :try_start_1b
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v4

    move-object v12, v4

    .line 2142
    .local v12, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    move v11, v4

    .line 2143
    .local v11, "count":I
    const/4 v4, 0x0

    move v10, v4

    .local v10, "i":I
    :goto_2d
    if-ge v10, v11, :cond_9d

    .line 2144
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    move v9, v4

    .line 2145
    .local v9, "profileUserId":I
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v8, v4

    .line 2146
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {v8, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2148
    invoke-virtual {v8, v14, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2151
    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v8, v15, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2152
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v25, -0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    sget v29, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v17, 0x3e8

    move-object v5, v8

    move-object/from16 v30, v8

    .end local v8    # "intent":Landroid/content/Intent;
    .local v30, "intent":Landroid/content/Intent;
    move/from16 v8, v16

    move/from16 v31, v9

    .end local v9    # "profileUserId":I
    .local v31, "profileUserId":I
    move-object/from16 v9, v18

    move/from16 v32, v10

    .end local v10    # "i":I
    .local v32, "i":I
    move-object/from16 v10, v19

    move/from16 v33, v11

    .end local v11    # "count":I
    .local v33, "count":I
    move-object/from16 v11, v20

    move-object/from16 v34, v12

    .end local v12    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v34, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move/from16 v12, v25

    move-object/from16 v13, v26

    move-object/from16 v35, v14

    move/from16 v14, v27

    move-object/from16 v36, v15

    move/from16 v15, v28

    move/from16 v16, v29

    move/from16 v18, v21

    move/from16 v19, v22

    move/from16 v20, v31

    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 2143
    nop

    .end local v31    # "profileUserId":I
    add-int/lit8 v10, v32, 0x1

    move/from16 v11, v33

    move-object/from16 v12, v34

    move-object/from16 v14, v35

    move-object/from16 v15, v36

    const/high16 v13, 0x50000000

    .end local v32    # "i":I
    .restart local v10    # "i":I
    goto :goto_2d

    .end local v30    # "intent":Landroid/content/Intent;
    .end local v33    # "count":I
    .end local v34    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v11    # "count":I
    .restart local v12    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_9d
    move/from16 v32, v10

    move/from16 v33, v11

    move-object/from16 v34, v12

    move-object/from16 v35, v14

    move-object/from16 v36, v15

    .end local v10    # "i":I
    .end local v11    # "count":I
    .end local v12    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v32    # "i":I
    .restart local v33    # "count":I
    .restart local v34    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_af

    .line 2190
    .end local v32    # "i":I
    .end local v33    # "count":I
    .end local v34    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_a8
    move-exception v0

    goto/16 :goto_179

    .line 2139
    :cond_ab
    move-object/from16 v35, v14

    move-object/from16 v36, v15

    .line 2158
    :goto_af
    if-ltz v3, :cond_17d

    .line 2160
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    .line 2161
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v15, v4

    .line 2162
    .local v15, "count":I
    const/4 v4, 0x0

    move v14, v4

    .local v14, "i":I
    :goto_c2
    if-ge v14, v15, :cond_12f

    .line 2163
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    move v13, v4

    .line 2164
    .local v13, "profileUserId":I
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.USER_FOREGROUND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v4

    .line 2165
    .local v12, "intent":Landroid/content/Intent;
    const/high16 v11, 0x50000000

    invoke-virtual {v12, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2167
    move-object/from16 v10, v35

    invoke-virtual {v12, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2170
    invoke-static {v13}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    move-object/from16 v9, v36

    invoke-virtual {v12, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2171
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    sget v28, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v17, 0x3e8

    move-object v5, v12

    move-object/from16 v37, v9

    move-object/from16 v9, v16

    move-object/from16 v38, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    move-object/from16 v29, v12

    .end local v12    # "intent":Landroid/content/Intent;
    .local v29, "intent":Landroid/content/Intent;
    move/from16 v12, v20

    move/from16 v30, v13

    .end local v13    # "profileUserId":I
    .local v30, "profileUserId":I
    move-object/from16 v13, v25

    move/from16 v25, v14

    .end local v14    # "i":I
    .local v25, "i":I
    move/from16 v14, v26

    move/from16 v26, v15

    .end local v15    # "count":I
    .local v26, "count":I
    move/from16 v15, v27

    move/from16 v16, v28

    move/from16 v18, v21

    move/from16 v19, v22

    move/from16 v20, v30

    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 2162
    nop

    .end local v30    # "profileUserId":I
    add-int/lit8 v14, v25, 0x1

    move/from16 v15, v26

    move-object/from16 v36, v37

    move-object/from16 v35, v38

    .end local v25    # "i":I
    .restart local v14    # "i":I
    goto :goto_c2

    .end local v26    # "count":I
    .end local v29    # "intent":Landroid/content/Intent;
    .restart local v15    # "count":I
    :cond_12f
    move/from16 v25, v14

    move/from16 v26, v15

    move-object/from16 v38, v35

    move-object/from16 v37, v36

    .line 2176
    .end local v14    # "i":I
    .end local v15    # "count":I
    .restart local v26    # "count":I
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v15, v4

    .line 2177
    .local v15, "intent":Landroid/content/Intent;
    const/high16 v4, 0x50000000

    invoke-virtual {v15, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2179
    move-object/from16 v4, v38

    invoke-virtual {v15, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2182
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    move-object/from16 v5, v37

    invoke-virtual {v15, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2183
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v5, "android.permission.MANAGE_USERS"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    sget v18, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v17, 0x3e8

    const/16 v20, -0x1

    move-object v5, v15

    move-object/from16 v25, v15

    .end local v15    # "intent":Landroid/content/Intent;
    .local v25, "intent":Landroid/content/Intent;
    move/from16 v15, v16

    move/from16 v16, v18

    move/from16 v18, v21

    move/from16 v19, v22

    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I
    :try_end_178
    .catchall {:try_start_1b .. :try_end_178} :catchall_a8

    goto :goto_17d

    .line 2190
    .end local v0    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v25    # "intent":Landroid/content/Intent;
    .end local v26    # "count":I
    :goto_179
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2191
    throw v0

    .line 2190
    :cond_17d
    :goto_17d
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2191
    nop

    .line 2192
    return-void
.end method

.method setInitialConfig(ZIZ)V
    .registers 6
    .param p1, "userSwitchUiEnabled"    # Z
    .param p2, "maxRunningUsers"    # I
    .param p3, "delayUserDataLocking"    # Z

    .line 436
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 437
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 438
    iput p2, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    .line 439
    iput-boolean p3, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    .line 440
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/UserController;->mInitialized:Z

    .line 441
    monitor-exit v0

    .line 442
    return-void

    .line 441
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method setStopUserOnSwitch(I)V
    .registers 8
    .param p1, "value"    # I

    .line 457
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.MANAGE_USERS"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    .line 458
    invoke-virtual {v0, v2}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_16

    goto :goto_1e

    .line 461
    :cond_16
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You either need MANAGE_USERS or INTERACT_ACROSS_USERS permission to call setStopUserOnSwitch()"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 467
    :try_start_21
    const-string v1, "ActivityManager"

    const-string/jumbo v2, "setStopUserOnSwitch(): %d -> %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/am/UserController;->mStopUserOnSwitch:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    iput p1, p0, Lcom/android/server/am/UserController;->mStopUserOnSwitch:I

    .line 469
    monitor-exit v0

    .line 470
    return-void

    .line 469
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_21 .. :try_end_42} :catchall_40

    throw v1
.end method

.method setSwitchingFromSystemUserMessage(Ljava/lang/String;)V
    .registers 4
    .param p1, "switchingFromSystemUserMessage"    # Ljava/lang/String;

    .line 2714
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2715
    :try_start_3
    iput-object p1, p0, Lcom/android/server/am/UserController;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    .line 2716
    monitor-exit v0

    .line 2717
    return-void

    .line 2716
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method setSwitchingToSystemUserMessage(Ljava/lang/String;)V
    .registers 4
    .param p1, "switchingToSystemUserMessage"    # Ljava/lang/String;

    .line 2720
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2721
    :try_start_3
    iput-object p1, p0, Lcom/android/server/am/UserController;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    .line 2722
    monitor-exit v0

    .line 2723
    return-void

    .line 2722
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method protected shouldConfirmCredentials(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 2694
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2695
    return v1

    .line 2697
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->isCredentialSharableWithParent(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 2698
    return v1

    .line 2700
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2701
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    .line 2702
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v2

    if-eqz v2, :cond_30

    const/4 v1, 0x1

    :cond_30
    return v1

    .line 2705
    .end local v0    # "km":Landroid/app/KeyguardManager;
    :cond_31
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v0

    return v0
.end method

.method startProfile(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1406
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.MANAGE_USERS"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1407
    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_16

    goto :goto_1e

    .line 1410
    :cond_16
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You either need MANAGE_USERS or INTERACT_ACROSS_USERS_FULL permission to start a profile"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1415
    :cond_1e
    :goto_1e
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1416
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_50

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1420
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4a

    .line 1421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot start disabled profile #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ActivityManager"

    invoke-static {v3, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    return v2

    .line 1425
    :cond_4a
    const/4 v1, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/am/UserController;->startUserNoChecks(IZLandroid/os/IProgressListener;)Z

    move-result v1

    return v1

    .line 1417
    :cond_50
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a profile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method startUser(IZ)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z

    .line 1430
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/UserController;->startUser(IZLandroid/os/IProgressListener;)Z

    move-result v0

    return v0
.end method

.method startUser(IZLandroid/os/IProgressListener;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z
    .param p3, "unlockListener"    # Landroid/os/IProgressListener;

    .line 1469
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v1, "startUser"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/UserController;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->startUserNoChecks(IZLandroid/os/IProgressListener;)Z

    move-result v0

    return v0
.end method

.method startUserInForeground(I)V
    .registers 5
    .param p1, "targetUserId"    # I

    .line 1746
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    move-result v0

    .line 1747
    .local v0, "success":Z
    if-nez v0, :cond_11

    .line 1748
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 1750
    :cond_11
    return-void
.end method

.method stopProfile(I)Z
    .registers 10
    .param p1, "userId"    # I

    .line 905
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.MANAGE_USERS"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 906
    invoke-virtual {v0, v2}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_16

    goto :goto_1e

    .line 909
    :cond_16
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You either need MANAGE_USERS or INTERACT_ACROSS_USERS_FULL permission to stop a profile"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 914
    :cond_1e
    :goto_1e
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 915
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_47

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 919
    const-string/jumbo v1, "no_debugging_features"

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/UserController;->enforceShellRestriction(Ljava/lang/String;I)V

    .line 920
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 921
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    :try_start_39
    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result v2

    if-nez v2, :cond_41

    const/4 v2, 0x1

    goto :goto_42

    :cond_41
    const/4 v2, 0x0

    :goto_42
    monitor-exit v1

    return v2

    .line 924
    :catchall_44
    move-exception v2

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_44

    throw v2

    .line 916
    :cond_47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a profile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method stopUser(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I
    .registers 9
    .param p1, "userId"    # I
    .param p2, "force"    # Z
    .param p3, "allowDelayedLocking"    # Z
    .param p4, "stopUserCallback"    # Landroid/app/IStopUserCallback;
    .param p5, "keyEvictedCallback"    # Lcom/android/server/am/UserState$KeyEvictedCallback;

    .line 929
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v1, "stopUser"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/UserController;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    if-ltz p1, :cond_1e

    if-eqz p1, :cond_1e

    .line 933
    const-string/jumbo v0, "no_debugging_features"

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/UserController;->enforceShellRestriction(Ljava/lang/String;I)V

    .line 934
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 935
    :try_start_15
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 937
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1b

    throw v1

    .line 931
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t stop system user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method switchUser(I)Z
    .registers 16
    .param p1, "targetUserId"    # I

    .line 1840
    const-string/jumbo v0, "no_debugging_features"

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/UserController;->enforceShellRestriction(Ljava/lang/String;I)V

    .line 1841
    const/16 v0, 0x757b

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1842
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    .line 1843
    .local v0, "currentUserId":I
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1844
    .local v1, "targetUserInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x1

    if-ne p1, v0, :cond_36

    .line 1845
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is already the current user"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    return v2

    .line 1848
    :cond_36
    const/4 v3, 0x0

    if-nez v1, :cond_52

    .line 1849
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No user info for user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    return v3

    .line 1852
    :cond_52
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v4

    if-nez v4, :cond_77

    .line 1853
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot switch to User #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": not supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    return v3

    .line 1856
    :cond_77
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 1857
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot switch to User #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": not a full user"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    return v3

    .line 1860
    :cond_9c
    invoke-static {}, Lcom/android/server/FactoryResetter;->isFactoryResetting()Z

    move-result v4

    if-eqz v4, :cond_c1

    .line 1861
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot switch to User #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": factory reset in progress"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    return v3

    .line 1865
    :cond_c1
    iget-object v4, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1866
    :try_start_c4
    iget-boolean v5, p0, Lcom/android/server/am/UserController;->mInitialized:Z

    if-nez v5, :cond_e8

    .line 1867
    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot switch to User #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": UserController not ready yet"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    monitor-exit v4

    return v3

    .line 1871
    :cond_e8
    iput p1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 1872
    iget-boolean v5, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 1873
    .local v5, "userSwitchUiEnabled":Z
    monitor-exit v4
    :try_end_ed
    .catchall {:try_start_c4 .. :try_end_ed} :catchall_138

    .line 1874
    if-eqz v5, :cond_127

    .line 1875
    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 1876
    .local v3, "currentUserInfo":Landroid/content/pm/UserInfo;
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1877
    .local v4, "userNames":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    iget-object v6, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1882
    iget-object v6, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v6}, Lcom/android/server/am/UserController$Injector;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v6

    .line 1883
    .local v6, "activityManagerService":Lcom/android/server/am/ActivityManagerService;
    invoke-static {}, Lcom/miui/server/xspace/XSpaceManagerServiceStub;->getInstance()Lcom/miui/server/xspace/XSpaceManagerServiceStub;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1884
    invoke-virtual {v8}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v8, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 1885
    invoke-virtual {v8}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v10

    iget-object v12, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    const/16 v13, 0x3e8

    .line 1883
    move-object v8, v6

    move v11, p1

    invoke-virtual/range {v7 .. v13}, Lcom/miui/server/xspace/XSpaceManagerServiceStub;->showSwitchingDialog(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;IILandroid/os/Handler;I)Z

    move-result v7

    if-nez v7, :cond_126

    .line 1887
    iget-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v7, p1, v2}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    .line 1890
    .end local v3    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .end local v4    # "userNames":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    .end local v6    # "activityManagerService":Lcom/android/server/am/ActivityManagerService;
    :cond_126
    goto :goto_137

    .line 1891
    :cond_127
    iget-object v4, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x78

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1892
    iget-object v4, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1895
    :goto_137
    return v2

    .line 1873
    .end local v5    # "userSwitchUiEnabled":Z
    :catchall_138
    move-exception v2

    :try_start_139
    monitor-exit v4
    :try_end_13a
    .catchall {:try_start_139 .. :try_end_13a} :catchall_138

    throw v2
.end method

.method unfreezeScreen()V
    .registers 3

    .line 2114
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 2115
    .local v0, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string/jumbo v1, "stopFreezingScreen"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2116
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->stopFreezingScreen()V

    .line 2117
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2118
    return-void
.end method

.method unlockUser(I[BLandroid/os/IProgressListener;)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "secret"    # [B
    .param p3, "listener"    # Landroid/os/IProgressListener;

    .line 1753
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v1, "unlockUser"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/UserController;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    const/16 v0, 0x757d

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1755
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1757
    .local v0, "binderToken":J
    :try_start_11
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->unlockUserCleared(I[BLandroid/os/IProgressListener;)Z

    move-result v2
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_19

    .line 1759
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1757
    return v2

    .line 1759
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1760
    throw v2
.end method

.method unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;

    .line 2347
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2348
    return-void
.end method

.method unsafeConvertIncomingUser(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 2324
    const/4 v0, -0x2

    if-eq p1, v0, :cond_9

    const/4 v0, -0x3

    if-ne p1, v0, :cond_7

    goto :goto_9

    .line 2325
    :cond_7
    move v0, p1

    goto :goto_d

    :cond_9
    :goto_9
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    .line 2324
    :goto_d
    return v0
.end method
