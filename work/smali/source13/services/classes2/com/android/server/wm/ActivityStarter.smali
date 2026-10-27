.class Lcom/android/server/wm/ActivityStarter;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityStarter$Request;,
        Lcom/android/server/wm/ActivityStarter$DefaultFactory;,
        Lcom/android/server/wm/ActivityStarter$Factory;
    }
.end annotation


# static fields
.field static final ENABLE_PENDING_INTENT_BAL_OPTION:J = 0xb76e480L

.field private static final INVALID_LAUNCH_MODE:I = -0x1

.field private static final MAX_TASK_WEIGHT_FOR_ADDING_ACTIVITY:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_FOCUS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityTaskManager"

.field private static imp:Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;


# instance fields
.field mAddingToTask:Z

.field private mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

.field private mAvoidMoveToFront:Z

.field private mCallingUid:I

.field private final mController:Lcom/android/server/wm/ActivityStartController;

.field private mDoResume:Z

.field private mFrozeTaskList:Z

.field private mInTask:Lcom/android/server/wm/Task;

.field private mInTaskFragment:Lcom/android/server/wm/TaskFragment;

.field private mIntent:Landroid/content/Intent;

.field private mIntentDelivered:Z

.field private final mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

.field private mIsTaskCleared:Z

.field private mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field private mLastStartActivityResult:I

.field private mLastStartActivityTimeMs:J

.field private mLastStartReason:Ljava/lang/String;

.field private mLaunchFlags:I

.field private mLaunchMode:I

.field private mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

.field private mLaunchTaskBehind:Z

.field private mMovedToFront:Z

.field mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

.field private mNewTaskInfo:Landroid/content/pm/ActivityInfo;

.field private mNewTaskIntent:Landroid/content/Intent;

.field private mNoAnimation:Z

.field private mNotTop:Lcom/android/server/wm/ActivityRecord;

.field private mOptions:Landroid/app/ActivityOptions;

.field public mPerf:Landroid/util/BoostFramework;

.field private mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field private mPreferredWindowingMode:I

.field private mPriorAboveTask:Lcom/android/server/wm/Task;

.field mRequest:Lcom/android/server/wm/ActivityStarter$Request;

.field private mRestrictedBgActivity:Z

.field private final mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mSourceRecord:Lcom/android/server/wm/ActivityRecord;

.field private mSourceRootTask:Lcom/android/server/wm/Task;

.field mStartActivity:Lcom/android/server/wm/ActivityRecord;

.field private mStartFlags:I

.field private final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private mTargetRootTask:Lcom/android/server/wm/Task;

.field private mTargetTask:Lcom/android/server/wm/Task;

.field private mTransientLaunch:Z

.field private mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field private mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 254
    invoke-static {}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getInstance()Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityStarter;->imp:Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStartInterceptor;)V
    .registers 6
    .param p1, "controller"    # Lcom/android/server/wm/ActivityStartController;
    .param p2, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p3, "supervisor"    # Lcom/android/server/wm/ActivityTaskSupervisor;
    .param p4, "interceptor"    # Lcom/android/server/wm/ActivityStartInterceptor;

    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    .line 271
    new-instance v0, Lcom/android/server/wm/ActivityStarter$Request;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityStarter$Request;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 669
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    .line 670
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 671
    iget-object v0, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 672
    iput-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 673
    iput-object p4, p0, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 674
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    .line 675
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    .line 676
    return-void
.end method

.method private addOrReparentStartingActivity(Lcom/android/server/wm/Task;Ljava/lang/String;)V
    .registers 15
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "reason"    # Ljava/lang/String;

    .line 3359
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3360
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    const/4 v9, 0x0

    if-eqz v1, :cond_60

    .line 3361
    invoke-virtual {v1}, Landroid/util/BoostFramework;->getPerfHalVersion()D

    move-result-wide v1

    const-wide v3, 0x4002666660000000L    # 2.299999952316284

    cmpl-double v1, v1, v3

    const/4 v2, 0x1

    if-ltz v1, :cond_3d

    .line 3362
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    const/16 v3, 0x1601

    .line 3363
    invoke-virtual {v1, v3, v0}, Landroid/util/BoostFramework;->perfGetFeedback(ILjava/lang/String;)I

    move-result v10

    .line 3365
    .local v10, "pkgType":I
    iget-object v11, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    iget v3, v11, Lcom/android/server/wm/ActivityRecord;->perfActivityBoostHandler:I

    const/16 v4, 0x1081

    const/4 v5, -0x1

    const/16 v6, 0xa

    const/4 v7, 0x1

    new-array v8, v2, [I

    aput v10, v8, v9

    .line 3366
    move v2, v3

    move v3, v4

    move-object v4, v0

    invoke-virtual/range {v1 .. v8}, Landroid/util/BoostFramework;->perfHintAcqRel(IILjava/lang/String;III[I)I

    move-result v1

    iput v1, v11, Lcom/android/server/wm/ActivityRecord;->perfActivityBoostHandler:I

    .line 3369
    .end local v10    # "pkgType":I
    goto :goto_60

    .line 3370
    :cond_3d
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->perfActivityBoostHandler:I

    if-lez v1, :cond_53

    .line 3371
    const-string v1, "ActivityTaskManager"

    const-string v3, "Activity boosted, release it firstly"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3372
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, v3, Lcom/android/server/wm/ActivityRecord;->perfActivityBoostHandler:I

    invoke-virtual {v1, v3}, Landroid/util/BoostFramework;->perfLockReleaseHandler(I)I

    .line 3374
    :cond_53
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    const/16 v4, 0x1081

    const/4 v5, -0x1

    .line 3375
    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/ActivityRecord;->perfActivityBoostHandler:I

    .line 3379
    :cond_60
    :goto_60
    move-object v1, p1

    .line 3380
    .local v1, "newParent":Lcom/android/server/wm/TaskFragment;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-eqz v2, :cond_76

    .line 3381
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v2, v3, p1}, Lcom/android/server/wm/ActivityStarter;->canEmbedActivity(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v2

    .line 3382
    .local v2, "embeddingCheckResult":I
    if-nez v2, :cond_70

    .line 3383
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    goto :goto_75

    .line 3386
    :cond_70
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-direct {p0, v3, v2}, Lcom/android/server/wm/ActivityStarter;->sendCanNotEmbedActivityError(Lcom/android/server/wm/TaskFragment;I)V

    .line 3388
    .end local v2    # "embeddingCheckResult":I
    :goto_75
    goto :goto_99

    .line 3389
    :cond_76
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-eqz v2, :cond_7b

    goto :goto_7c

    :cond_7b
    const/4 v2, 0x0

    .line 3390
    .local v2, "candidateTf":Lcom/android/server/wm/TaskFragment;
    :goto_7c
    if-nez v2, :cond_88

    .line 3391
    invoke-virtual {p1, v9, v9}, Lcom/android/server/wm/Task;->topRunningActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 3393
    .local v3, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_88

    .line 3394
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    .line 3397
    .end local v3    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_88
    if-eqz v2, :cond_99

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v3

    if-eqz v3, :cond_99

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3398
    invoke-static {v2, v3, p1}, Lcom/android/server/wm/ActivityStarter;->canEmbedActivity(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v3

    if-nez v3, :cond_99

    .line 3401
    move-object v1, v2

    .line 3404
    .end local v2    # "candidateTf":Lcom/android/server/wm/TaskFragment;
    :cond_99
    :goto_99
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_b4

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3405
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-ne v2, v1, :cond_aa

    goto :goto_b4

    .line 3408
    :cond_aa
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v1, v3, p2}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    goto :goto_bc

    .line 3406
    :cond_b4
    :goto_b4
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const v3, 0x7fffffff

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/TaskFragment;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 3410
    :goto_bc
    return-void
.end method

.method private adjustLaunchFlagsToDocumentMode(Lcom/android/server/wm/ActivityRecord;ZZI)I
    .registers 9
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchSingleInstance"    # Z
    .param p3, "launchSingleTask"    # Z
    .param p4, "launchFlags"    # I

    .line 3452
    const/high16 v0, 0x80000

    and-int v1, p4, v0

    const v2, -0x8080001

    if-eqz v1, :cond_16

    if-nez p2, :cond_d

    if-eqz p3, :cond_16

    .line 3455
    :cond_d
    const-string v0, "ActivityTaskManager"

    const-string v1, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3457
    and-int/2addr p4, v2

    goto :goto_2f

    .line 3460
    :cond_16
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    packed-switch v1, :pswitch_data_30

    goto :goto_2f

    .line 3470
    :pswitch_1e
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_28

    .line 3476
    and-int/2addr v0, p4

    if-eqz v0, :cond_2f

    .line 3477
    and-int/2addr p4, v2

    goto :goto_2f

    .line 3483
    :cond_28
    and-int/2addr p4, v2

    goto :goto_2f

    .line 3467
    :pswitch_2a
    or-int/2addr p4, v0

    .line 3468
    goto :goto_2f

    .line 3464
    :pswitch_2c
    or-int/2addr p4, v0

    .line 3465
    goto :goto_2f

    .line 3462
    :pswitch_2e
    nop

    .line 3489
    :cond_2f
    :goto_2f
    return p4

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2c
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method

.method static canEmbedActivity(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I
    .registers 5
    .param p0, "taskFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "targetTask"    # Lcom/android/server/wm/Task;

    .line 2416
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2418
    .local v0, "hostTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_e

    if-eq p2, v0, :cond_9

    goto :goto_e

    .line 2422
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivity(Lcom/android/server/wm/ActivityRecord;)I

    move-result v1

    return v1

    .line 2419
    :cond_e
    :goto_e
    const/4 v1, 0x3

    return v1
.end method

.method private complyActivityFlags(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V
    .registers 14
    .param p1, "targetTask"    # Lcom/android/server/wm/Task;
    .param p2, "reusedActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 2608
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2609
    .local v0, "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_11

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_11

    move v3, v2

    goto :goto_12

    :cond_11
    move v3, v1

    .line 2611
    .local v3, "resetTask":Z
    :goto_12
    if-eqz v3, :cond_1c

    .line 2612
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v0, v5}, Lcom/android/server/wm/Task;->resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2618
    :cond_1c
    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v5, 0x10008000

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_40

    .line 2619
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v4

    if-eqz v4, :cond_32

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2620
    invoke-static {p2, v4}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->ignoreClearTaskFlagInFreeForm(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 2628
    :cond_32
    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->performClearTaskForReuse(Z)V

    .line 2629
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2630
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2631
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    goto/16 :goto_17f

    .line 2632
    :cond_40
    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x4000000

    and-int v6, v4, v5

    if-nez v6, :cond_106

    .line 2633
    invoke-static {v4}, Lcom/android/server/wm/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v4

    if-nez v4, :cond_106

    const/4 v4, 0x2

    const/4 v6, 0x4

    .line 2634
    const/4 v7, 0x3

    invoke-direct {p0, v7, v4, v6}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(III)Z

    move-result v4

    if-eqz v4, :cond_59

    goto/16 :goto_106

    .line 2680
    :cond_59
    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v5, v4

    if-nez v5, :cond_a0

    iget-boolean v5, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v5, :cond_a0

    const/high16 v5, 0x20000

    and-int/2addr v4, v5

    if-eqz v4, :cond_a0

    .line 2685
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 2686
    invoke-virtual {p1, v4}, Lcom/android/server/wm/Task;->findActivityInHistory(Landroid/content/ComponentName;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2687
    .local v4, "act":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_9c

    .line 2688
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 2689
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->moveActivityToFront(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5

    .line 2690
    .local v5, "actuallyMoved":Z
    if-eqz v5, :cond_8c

    .line 2692
    iput-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2693
    iget-boolean v6, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    if-eqz v6, :cond_87

    .line 2694
    iget-object v6, v4, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    goto :goto_8c

    .line 2696
    :cond_87
    iget-object v1, v4, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v7}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 2699
    :cond_8c
    :goto_8c
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 2700
    invoke-direct {p0, v4, p3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 2701
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    .line 2702
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .end local v5    # "actuallyMoved":Z
    goto :goto_9e

    .line 2703
    :cond_9c
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2705
    .end local v4    # "act":Lcom/android/server/wm/ActivityRecord;
    :goto_9e
    goto/16 :goto_17f

    :cond_a0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 2706
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-ne p1, v1, :cond_b2

    goto/16 :goto_17f

    .line 2709
    :cond_b2
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x20000000

    and-int/2addr v1, v4

    if-nez v1, :cond_bd

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v2, v1, :cond_e3

    :cond_bd
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 2711
    invoke-virtual {v1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e3

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_e3

    .line 2717
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v1

    if-eqz v1, :cond_de

    .line 2718
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2720
    :cond_de
    invoke-direct {p0, v0, p3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    goto/16 :goto_17f

    .line 2721
    :cond_e3
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->isSameIntentFilter(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_ef

    .line 2724
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_17f

    .line 2725
    :cond_ef
    if-nez p2, :cond_17f

    .line 2726
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_17f

    .line 2728
    :cond_f5
    if-nez v3, :cond_fb

    .line 2733
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_17f

    .line 2734
    :cond_fb
    iget-boolean v1, p1, Lcom/android/server/wm/Task;->rootWasReset:Z

    if-nez v1, :cond_17f

    .line 2740
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    goto/16 :goto_17f

    .line 2639
    :cond_106
    :goto_106
    new-array v4, v2, [I

    .line 2640
    .local v4, "finishCount":[I
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v6, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {p1, v5, v6, v4}, Lcom/android/server/wm/Task;->performClearTop(Lcom/android/server/wm/ActivityRecord;I[I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 2644
    .local v5, "clearTop":Lcom/android/server/wm/ActivityRecord;
    if-eqz p2, :cond_121

    sget-object v6, Lcom/android/server/wm/ActivityStarter;->imp:Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getLastFrame(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_121

    .line 2645
    invoke-virtual {p2, v2}, Lcom/android/server/wm/ActivityRecord;->setLastFrame(Z)V

    .line 2649
    :cond_121
    if-eqz v5, :cond_140

    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v6, :cond_140

    .line 2650
    aget v1, v4, v1

    if-lez v1, :cond_12d

    .line 2652
    iput-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2654
    :cond_12d
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v1

    if-eqz v1, :cond_13c

    .line 2657
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2659
    :cond_13c
    invoke-direct {p0, v5, p3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    goto :goto_17e

    .line 2664
    :cond_140
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2667
    if-eqz v5, :cond_15a

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    if-eqz v6, :cond_15a

    .line 2668
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v6

    if-eqz v6, :cond_15a

    .line 2669
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 2671
    :cond_15a
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-nez v6, :cond_17e

    .line 2674
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2676
    iget-boolean v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    xor-int/2addr v7, v2

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_17b

    move v1, v2

    :cond_17b
    invoke-virtual {v6, p1, v7, v1}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;ZZ)V

    .line 2680
    .end local v4    # "finishCount":[I
    .end local v5    # "clearTop":Lcom/android/server/wm/ActivityRecord;
    :cond_17e
    :goto_17e
    nop

    .line 2742
    :cond_17f
    :goto_17f
    return-void
.end method

.method private computeLaunchParams(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    .registers 14
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "targetTask"    # Lcom/android/server/wm/Task;

    .line 2322
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v1

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    const/4 v8, 0x3

    move-object v2, p3

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 2324
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredTaskDisplayArea()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2325
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_2a

    .line 2326
    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    :goto_2a
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2327
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 2328
    return-void
.end method

.method private computeLaunchingTaskFlags()V
    .registers 11

    .line 2959
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/high16 v4, 0x10000000

    if-nez v0, :cond_e9

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_e9

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_e9

    .line 2960
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2961
    .local v0, "baseIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 2962
    .local v5, "root":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_c9

    .line 2970
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v6

    if-eqz v6, :cond_98

    .line 2971
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 2976
    if-nez v5, :cond_3c

    goto :goto_98

    .line 2977
    :cond_3c
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2978
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller with mInTask "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has root "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but target is singleInstance/Task"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2972
    :cond_6c
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2973
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to launch singleInstance/Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " into different task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2985
    :cond_98
    :goto_98
    if-nez v5, :cond_bd

    .line 2986
    const v6, 0x18082000

    .line 2988
    .local v6, "flagsOfInterest":I
    iget v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v8, -0x18082001

    and-int/2addr v7, v8

    .line 2989
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const v9, 0x18082000

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    iput v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2990
    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v8, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2991
    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2992
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2997
    .end local v6    # "flagsOfInterest":I
    goto :goto_c8

    :cond_bd
    iget v6, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v6, v4

    if-eqz v6, :cond_c6

    .line 2998
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto :goto_c8

    .line 3001
    :cond_c6
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 3003
    .end local v0    # "baseIntent":Landroid/content/Intent;
    .end local v5    # "root":Lcom/android/server/wm/ActivityRecord;
    :goto_c8
    goto :goto_114

    .line 2963
    .restart local v0    # "baseIntent":Landroid/content/Intent;
    .restart local v5    # "root":Lcom/android/server/wm/ActivityRecord;
    :cond_c9
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2964
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching into task without base intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3004
    .end local v0    # "baseIntent":Landroid/content/Intent;
    .end local v5    # "root":Lcom/android/server/wm/ActivityRecord;
    :cond_e9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 3010
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result v0

    if-nez v0, :cond_108

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_108

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 3012
    invoke-interface {v0, v5}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->shouldAddingToTask(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_114

    :cond_108
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_114

    .line 3013
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_114

    .line 3014
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 3018
    :cond_114
    :goto_114
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_159

    .line 3019
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v3, :cond_144

    .line 3022
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    if-nez v1, :cond_159

    if-nez v0, :cond_159

    .line 3023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_159

    .line 3027
    :cond_144
    iget v0, v3, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    if-ne v0, v2, :cond_14e

    .line 3031
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_159

    .line 3032
    :cond_14e
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_159

    .line 3035
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 3038
    :cond_159
    :goto_159
    return-void
.end method

.method static computeResolveFilterUid(III)I
    .registers 4
    .param p0, "customCallingUid"    # I
    .param p1, "actualCallingUid"    # I
    .param p2, "filterCallingUid"    # I

    .line 1822
    const/16 v0, -0x2710

    if-eq p2, v0, :cond_6

    .line 1823
    move v0, p2

    goto :goto_b

    .line 1824
    :cond_6
    if-ltz p0, :cond_a

    move v0, p0

    goto :goto_b

    :cond_a
    move v0, p1

    .line 1822
    :goto_b
    return v0
.end method

.method private computeSourceRootTask()V
    .registers 5

    .line 3041
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3042
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    .line 3043
    return-void

    .line 3045
    :cond_8
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_15

    .line 3046
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    .line 3047
    return-void

    .line 3054
    :cond_15
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-nez v0, :cond_64

    .line 3055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivity called from finishing "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 3063
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3064
    .local v0, "sourceTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_56

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_64

    .line 3065
    :cond_56
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 3066
    if-eqz v0, :cond_61

    iget-object v2, v0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    goto :goto_62

    :cond_61
    move-object v2, v1

    :goto_62
    iput-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 3069
    .end local v0    # "sourceTask":Lcom/android/server/wm/Task;
    :cond_64
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 3070
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    .line 3071
    return-void
.end method

.method private computeTargetTask()Lcom/android/server/wm/Task;
    .registers 5

    .line 2283
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v0, :cond_17

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_17

    .line 2286
    return-object v1

    .line 2289
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2b

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2290
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getForceLaunchNewTask()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2291
    return-object v1

    .line 2292
    :cond_2b
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getForceLaunchNewTask()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2293
    return-object v1

    .line 2296
    :cond_3c
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_45

    .line 2297
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0

    .line 2298
    :cond_45
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_5d

    .line 2300
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 2303
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    .line 2305
    :cond_5a
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    return-object v0

    .line 2307
    :cond_5d
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2309
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2310
    .local v2, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_72

    .line 2311
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    return-object v1

    .line 2314
    :cond_72
    const-string v3, "computeTargetTask"

    invoke-virtual {v0, v3}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    .line 2317
    .end local v0    # "rootTask":Lcom/android/server/wm/Task;
    .end local v2    # "top":Lcom/android/server/wm/ActivityRecord;
    return-object v1
.end method

.method private createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 32
    .param p1, "auxiliaryResponse"    # Landroid/content/pm/AuxiliaryResolveInfo;
    .param p2, "originalIntent"    # Landroid/content/Intent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingFeatureId"    # Ljava/lang/String;
    .param p5, "verificationBundle"    # Landroid/os/Bundle;
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "userId"    # I

    .line 1741
    move-object/from16 v9, p1

    if-eqz v9, :cond_2c

    iget-boolean v0, v9, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v0, :cond_2c

    .line 1743
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v11

    .line 1744
    .local v11, "packageManager":Landroid/content/pm/PackageManagerInternal;
    move-object/from16 v15, p3

    move/from16 v14, p7

    invoke-virtual {v11, v15, v14}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v12

    .line 1745
    .local v12, "isRequesterInstantApp":Z
    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move v6, v12

    move-object/from16 v7, p5

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/content/pm/PackageManagerInternal;->requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;I)V

    goto :goto_32

    .line 1741
    .end local v11    # "packageManager":Landroid/content/pm/PackageManagerInternal;
    .end local v12    # "isRequesterInstantApp":Z
    :cond_2c
    move-object/from16 v10, p0

    move-object/from16 v15, p3

    move/from16 v14, p7

    .line 1749
    :goto_32
    nop

    .line 1751
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v13

    .line 1752
    const/4 v0, 0x0

    if-nez v9, :cond_3c

    move-object v1, v0

    goto :goto_3e

    :cond_3c
    iget-object v1, v9, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    .line 1758
    :goto_3e
    if-nez v9, :cond_43

    move-object/from16 v20, v0

    goto :goto_47

    :cond_43
    iget-object v2, v9, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v2

    .line 1759
    :goto_47
    if-nez v9, :cond_4c

    move-object/from16 v21, v0

    goto :goto_50

    :cond_4c
    iget-object v2, v9, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    move-object/from16 v21, v2

    :goto_50
    if-eqz v9, :cond_58

    iget-boolean v2, v9, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v2, :cond_58

    const/4 v2, 0x1

    goto :goto_59

    :cond_58
    const/4 v2, 0x0

    :goto_59
    move/from16 v22, v2

    .line 1761
    if-nez v9, :cond_5e

    goto :goto_60

    :cond_5e
    iget-object v0, v9, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    :goto_60
    move-object/from16 v23, v0

    .line 1749
    move-object/from16 v12, p2

    move-object v14, v1

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    move/from16 v19, p7

    invoke-static/range {v12 .. v23}, Lcom/android/server/pm/InstantAppResolver;->buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V
    .registers 6
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 3347
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    if-eqz v0, :cond_5

    .line 3348
    return-void

    .line 3351
    :cond_5
    const/16 v0, 0x7533

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->logStartActivity(ILcom/android/server/wm/Task;)V

    .line 3352
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/android/server/wm/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;)V

    .line 3354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 3355
    return-void
.end method

.method private deliverToCurrentTopIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)I
    .registers 15
    .param p1, "topRootTask"    # Lcom/android/server/wm/Task;
    .param p2, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 2534
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2535
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3f

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 2536
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget v3, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v4, v4, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v3, v4, :cond_3f

    .line 2538
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v3

    if-eqz v3, :cond_3f

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x20000000

    and-int/2addr v3, v4

    if-nez v3, :cond_2f

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v2, v3, :cond_3f

    .line 2544
    :cond_2f
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-ne v3, v4, :cond_3f

    :cond_3d
    move v3, v2

    goto :goto_40

    :cond_3f
    move v3, v1

    .line 2545
    .local v3, "dontStart":Z
    :goto_40
    if-nez v3, :cond_43

    .line 2546
    return v1

    .line 2550
    :cond_43
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    if-nez v4, :cond_6b

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-eqz v4, :cond_6b

    iget-boolean v4, v4, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v4, :cond_6b

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2552
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6b

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-eq p1, v4, :cond_6b

    .line 2554
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-nez v4, :cond_6b

    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x8000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_6b

    move v4, v2

    goto :goto_6c

    :cond_6b
    move v4, v1

    .line 2556
    .local v4, "skipForMultipleTask":Z
    :goto_6c
    if-eqz v4, :cond_88

    .line 2557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "skip for multiple task, top : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    return v1

    .line 2563
    :cond_88
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    .line 2564
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_c6

    .line 2567
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_c1

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isFocused()Z

    move-result v1

    if-nez v1, :cond_c1

    .line 2568
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    iget v5, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2569
    invoke-interface {v1, v5}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v1

    .line 2570
    .local v1, "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-eqz v1, :cond_c0

    invoke-virtual {v1}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->isInMiniFreeFormMode()Z

    move-result v5

    if-nez v5, :cond_c0

    invoke-virtual {v1}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->inPinMode()Z

    move-result v5

    if-nez v5, :cond_c0

    .line 2571
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v6, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->setFocusedTask(ILcom/android/server/wm/ActivityRecord;)V

    .line 2573
    .end local v1    # "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    :cond_c0
    goto :goto_c6

    .line 2574
    :cond_c1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 2578
    :cond_c6
    :goto_c6
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2579
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_d1

    .line 2582
    return v2

    .line 2585
    :cond_d1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_ef

    .line 2586
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    const/4 v6, -0x1

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v1, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v8, v1, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 2589
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 2592
    :cond_ef
    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 2596
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v5, v5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v1, v2, v5, v6, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;)V

    .line 2599
    const/4 v1, 0x3

    return v1
.end method

.method private executeRequest(Lcom/android/server/wm/ActivityStarter$Request;)I
    .registers 75
    .param p1, "request"    # Lcom/android/server/wm/ActivityStarter$Request;

    .line 958
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_840

    .line 961
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    iput-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 962
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v15, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 963
    const/4 v13, 0x0

    iput-object v13, v15, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 965
    iget-object v12, v14, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 966
    .local v12, "caller":Landroid/app/IApplicationThread;
    iget-object v10, v14, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 967
    .local v10, "intent":Landroid/content/Intent;
    iget-object v9, v14, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 968
    .local v9, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    iget-object v8, v14, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 969
    .local v8, "resolvedType":Ljava/lang/String;
    iget-object v7, v14, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 970
    .local v7, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v6, v14, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 971
    .local v6, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v11, v14, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 972
    .local v11, "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    iget-object v5, v14, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 973
    .local v5, "resultTo":Landroid/os/IBinder;
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 974
    .local v0, "resultWho":Ljava/lang/String;
    iget v1, v14, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 975
    .local v1, "requestCode":I
    iget v2, v14, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 976
    .local v2, "callingPid":I
    iget v3, v14, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 977
    .local v3, "callingUid":I
    iget-object v4, v14, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 978
    .local v4, "callingPackage":Ljava/lang/String;
    iget-object v13, v14, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 979
    .local v13, "callingFeatureId":Ljava/lang/String;
    move-object/from16 v18, v13

    .end local v13    # "callingFeatureId":Ljava/lang/String;
    .local v18, "callingFeatureId":Ljava/lang/String;
    iget v13, v14, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 980
    .local v13, "realCallingPid":I
    move-object/from16 v19, v9

    .end local v9    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v19, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    iget v9, v14, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 981
    .local v9, "realCallingUid":I
    move-object/from16 v35, v6

    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v35, "rInfo":Landroid/content/pm/ResolveInfo;
    iget v6, v14, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 982
    .local v6, "startFlags":I
    move/from16 v36, v13

    .end local v13    # "realCallingPid":I
    .local v36, "realCallingPid":I
    iget-object v13, v14, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 983
    .local v13, "options":Lcom/android/server/wm/SafeActivityOptions;
    move/from16 v37, v9

    .end local v9    # "realCallingUid":I
    .local v37, "realCallingUid":I
    iget-object v9, v14, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    .line 984
    .local v9, "inTask":Lcom/android/server/wm/Task;
    move/from16 v20, v3

    .end local v3    # "callingUid":I
    .local v20, "callingUid":I
    iget-object v3, v14, Lcom/android/server/wm/ActivityStarter$Request;->inTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 986
    .local v3, "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    const/16 v21, 0x0

    .line 989
    .local v21, "err":I
    if-eqz v13, :cond_56

    invoke-virtual {v13}, Lcom/android/server/wm/SafeActivityOptions;->popAppVerificationBundle()Landroid/os/Bundle;

    move-result-object v17

    goto :goto_58

    :cond_56
    const/16 v17, 0x0

    .line 991
    .local v17, "verificationBundle":Landroid/os/Bundle;
    :goto_58
    const/16 v22, 0x0

    .line 992
    .local v22, "callerApp":Lcom/android/server/wm/WindowProcessController;
    move-object/from16 v38, v3

    .end local v3    # "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    .local v38, "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    const-string v3, "ActivityTaskManager"

    if-eqz v12, :cond_b5

    .line 993
    move-object/from16 v23, v0

    .end local v0    # "resultWho":Ljava/lang/String;
    .local v23, "resultWho":Ljava/lang/String;
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 994
    .end local v22    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v0, "callerApp":Lcom/android/server/wm/WindowProcessController;
    if-eqz v0, :cond_7b

    .line 995
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v2

    .line 996
    move/from16 v22, v2

    .end local v2    # "callingPid":I
    .local v22, "callingPid":I
    iget-object v2, v0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v40, v0

    move-object/from16 v39, v9

    move/from16 v9, v22

    .end local v20    # "callingUid":I
    .local v2, "callingUid":I
    goto :goto_be

    .line 998
    .end local v22    # "callingPid":I
    .local v2, "callingPid":I
    .restart local v20    # "callingUid":I
    :cond_7b
    move-object/from16 v22, v0

    .end local v0    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v22, "callerApp":Lcom/android/server/wm/WindowProcessController;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v39, v9

    .end local v9    # "inTask":Lcom/android/server/wm/Task;
    .local v39, "inTask":Lcom/android/server/wm/Task;
    const-string v9, "Unable to find app for caller "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " (pid="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ") when starting: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 999
    invoke-virtual {v10}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 998
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const/16 v21, -0x5e

    move v9, v2

    move/from16 v2, v20

    move-object/from16 v40, v22

    goto :goto_be

    .line 992
    .end local v23    # "resultWho":Ljava/lang/String;
    .end local v39    # "inTask":Lcom/android/server/wm/Task;
    .local v0, "resultWho":Ljava/lang/String;
    .restart local v9    # "inTask":Lcom/android/server/wm/Task;
    :cond_b5
    move-object/from16 v23, v0

    move-object/from16 v39, v9

    .end local v0    # "resultWho":Ljava/lang/String;
    .end local v9    # "inTask":Lcom/android/server/wm/Task;
    .restart local v23    # "resultWho":Ljava/lang/String;
    .restart local v39    # "inTask":Lcom/android/server/wm/Task;
    move v9, v2

    move/from16 v2, v20

    move-object/from16 v40, v22

    .line 1004
    .end local v20    # "callingUid":I
    .end local v22    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v2, "callingUid":I
    .local v9, "callingPid":I
    .local v40, "callerApp":Lcom/android/server/wm/WindowProcessController;
    :goto_be
    move-object/from16 v41, v12

    .end local v12    # "caller":Landroid/app/IApplicationThread;
    .local v41, "caller":Landroid/app/IApplicationThread;
    if-eqz v7, :cond_cf

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_cf

    .line 1005
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    goto :goto_d0

    :cond_cf
    const/4 v0, 0x0

    :goto_d0
    move/from16 v55, v0

    .line 1006
    .local v55, "userId":I
    const-string v12, " callingPackage "

    const-string v14, " from pid "

    move/from16 v42, v6

    .end local v6    # "startFlags":I
    .local v42, "startFlags":I
    const-string/jumbo v6, "} from uid "

    move-object/from16 v43, v11

    .end local v11    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .local v43, "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    const-string v11, " {"

    move-object/from16 v44, v8

    .end local v8    # "resolvedType":Ljava/lang/String;
    .local v44, "resolvedType":Ljava/lang/String;
    const-string v8, "START u"

    if-nez v21, :cond_12d

    .line 1008
    invoke-static {}, Lcom/android/server/wm/ActivityStarterStub;->get()Lcom/android/server/wm/ActivityStarterStub;

    move-result-object v0

    invoke-virtual {v0, v10, v4}, Lcom/android/server/wm/ActivityStarterStub;->recordNewIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v15, v55

    .end local v55    # "userId":I
    .local v15, "userId":I
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v45, v8

    move-object/from16 v46, v11

    const/4 v8, 0x0

    const/4 v11, 0x1

    .end local v15    # "userId":I
    .restart local v55    # "userId":I
    invoke-virtual {v10, v11, v11, v11, v8}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_132

    .line 1006
    :cond_12d
    move-object/from16 v45, v8

    move-object/from16 v46, v11

    const/4 v11, 0x1

    .line 1018
    :goto_132
    const/4 v0, 0x0

    .line 1019
    .local v0, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    const/4 v8, 0x0

    .line 1020
    .local v8, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_19a

    .line 1021
    invoke-static {v5}, Lcom/android/server/wm/ActivityRecord;->isInAnyTask(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1022
    sget-boolean v20, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v20, :cond_15e

    .line 1023
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Will send result to "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, " "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :cond_15e
    if-eqz v0, :cond_193

    .line 1032
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v11

    if-eqz v11, :cond_17c

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v11

    if-eqz v11, :cond_17c

    const/4 v15, -0x1

    if-ne v1, v15, :cond_17d

    .line 1034
    invoke-static {}, Lcom/android/server/wm/ActivityTaskSupervisorStub;->get()Lcom/android/server/wm/ActivityTaskSupervisorStub;

    move-result-object v11

    invoke-virtual {v11, v10, v7}, Lcom/android/server/wm/ActivityTaskSupervisorStub;->isAppLockActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Z

    move-result v11

    if-eqz v11, :cond_17d

    .line 1035
    const/16 v1, -0x3e9

    goto :goto_17d

    .line 1032
    :cond_17c
    const/4 v15, -0x1

    .line 1038
    :cond_17d
    :goto_17d
    if-gez v1, :cond_183

    const/16 v11, -0x3e9

    if-ne v1, v11, :cond_18d

    :cond_183
    iget-boolean v11, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v11, :cond_18d

    .line 1041
    move-object v8, v0

    move-object/from16 v72, v8

    move-object/from16 v0, v72

    goto :goto_1a0

    .line 1047
    :cond_18d
    move-object/from16 v72, v8

    move-object v8, v0

    move-object/from16 v0, v72

    goto :goto_1a0

    .line 1025
    :cond_193
    const/4 v15, -0x1

    move-object/from16 v72, v8

    move-object v8, v0

    move-object/from16 v0, v72

    goto :goto_1a0

    .line 1020
    :cond_19a
    const/4 v15, -0x1

    move-object/from16 v72, v8

    move-object v8, v0

    move-object/from16 v0, v72

    .line 1047
    .local v0, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .local v8, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :goto_1a0
    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v56

    .line 1048
    .local v56, "launchFlags":I
    const/high16 v11, 0x2000000

    and-int v11, v56, v11

    if-eqz v11, :cond_1ee

    if-eqz v8, :cond_1ee

    .line 1051
    if-ltz v1, :cond_1bb

    .line 1052
    invoke-static {v13}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1054
    invoke-static {}, Lcom/android/server/wm/ActivityStarterStub;->get()Lcom/android/server/wm/ActivityStarterStub;

    move-result-object v3

    const/16 v6, -0x5d

    invoke-virtual {v3, v6, v10}, Lcom/android/server/wm/ActivityStarterStub;->logStartActivityError(ILandroid/content/Intent;)V

    .line 1056
    return v6

    .line 1058
    :cond_1bb
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1059
    if-eqz v0, :cond_1c6

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked()Z

    move-result v11

    if-nez v11, :cond_1c6

    .line 1060
    const/4 v0, 0x0

    .line 1062
    :cond_1c6
    iget-object v11, v8, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 1063
    .end local v23    # "resultWho":Ljava/lang/String;
    .local v11, "resultWho":Ljava/lang/String;
    iget v1, v8, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 1064
    const/4 v15, 0x0

    iput-object v15, v8, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1065
    if-eqz v0, :cond_1d2

    .line 1066
    invoke-virtual {v0, v8, v11, v1}, Lcom/android/server/wm/ActivityRecord;->removeResultsLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    .line 1068
    :cond_1d2
    iget v15, v8, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    if-ne v15, v2, :cond_1e4

    .line 1079
    iget-object v4, v8, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1080
    iget-object v15, v8, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    move-object/from16 v57, v15

    move-object v15, v11

    move-object v11, v0

    move-object/from16 v72, v4

    move v4, v1

    move-object/from16 v1, v72

    .end local v18    # "callingFeatureId":Ljava/lang/String;
    .local v15, "callingFeatureId":Ljava/lang/String;
    goto :goto_1f8

    .line 1068
    .end local v15    # "callingFeatureId":Ljava/lang/String;
    .restart local v18    # "callingFeatureId":Ljava/lang/String;
    :cond_1e4
    move-object v15, v11

    move-object/from16 v57, v18

    move-object v11, v0

    move-object/from16 v72, v4

    move v4, v1

    move-object/from16 v1, v72

    goto :goto_1f8

    .line 1084
    .end local v11    # "resultWho":Ljava/lang/String;
    .restart local v23    # "resultWho":Ljava/lang/String;
    :cond_1ee
    move-object v11, v0

    move-object/from16 v57, v18

    move-object/from16 v15, v23

    move-object/from16 v72, v4

    move v4, v1

    move-object/from16 v1, v72

    .end local v0    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v18    # "callingFeatureId":Ljava/lang/String;
    .end local v23    # "resultWho":Ljava/lang/String;
    .local v1, "callingPackage":Ljava/lang/String;
    .local v4, "requestCode":I
    .local v11, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .local v15, "resultWho":Ljava/lang/String;
    .local v57, "callingFeatureId":Ljava/lang/String;
    :goto_1f8
    if-nez v21, :cond_202

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_202

    .line 1087
    const/16 v21, -0x5b

    .line 1090
    :cond_202
    if-nez v21, :cond_208

    if-nez v7, :cond_208

    .line 1093
    const/16 v21, -0x5c

    .line 1096
    :cond_208
    move-object/from16 v18, v5

    .end local v5    # "resultTo":Landroid/os/IBinder;
    .local v18, "resultTo":Landroid/os/IBinder;
    const-string v5, "Failure checking voice capabilities"

    if-nez v21, :cond_299

    if-eqz v8, :cond_299

    .line 1097
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_28e

    .line 1102
    const/high16 v0, 0x10000000

    and-int v0, v56, v0

    if-nez v0, :cond_283

    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v47, v6

    iget-object v6, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v6, :cond_27a

    .line 1105
    :try_start_22c
    const-string v0, "android.intent.category.VOICE"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_231
    .catch Landroid/os/RemoteException; {:try_start_22c .. :try_end_231} :catch_26b

    .line 1106
    move-object/from16 v6, p0

    move-object/from16 v20, v14

    const/4 v14, 0x1

    :try_start_236
    iget-object v0, v6, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1107
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14
    :try_end_240
    .catch Landroid/os/RemoteException; {:try_start_236 .. :try_end_240} :catch_267

    .line 1106
    move-object/from16 v48, v8

    move-object/from16 v8, v44

    .end local v44    # "resolvedType":Ljava/lang/String;
    .local v8, "resolvedType":Ljava/lang/String;
    .local v48, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :try_start_244
    invoke-interface {v0, v14, v10, v8}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_264

    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Activity being started in current voice task does not support voice: "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_260
    .catch Landroid/os/RemoteException; {:try_start_244 .. :try_end_260} :catch_265

    .line 1110
    const/16 v0, -0x61

    move/from16 v21, v0

    .line 1115
    :cond_264
    goto :goto_2a3

    .line 1112
    :catch_265
    move-exception v0

    goto :goto_274

    .end local v48    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v8, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v44    # "resolvedType":Ljava/lang/String;
    :catch_267
    move-exception v0

    move-object/from16 v48, v8

    goto :goto_272

    :catch_26b
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v48, v8

    move-object/from16 v20, v14

    :goto_272
    move-object/from16 v8, v44

    .line 1113
    .end local v44    # "resolvedType":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .local v8, "resolvedType":Ljava/lang/String;
    .restart local v48    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :goto_274
    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1114
    const/16 v21, -0x61

    goto :goto_2a3

    .line 1102
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v48    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v8, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v44    # "resolvedType":Ljava/lang/String;
    :cond_27a
    move-object/from16 v6, p0

    move-object/from16 v48, v8

    move-object/from16 v20, v14

    move-object/from16 v8, v44

    goto :goto_28d

    :cond_283
    move-object/from16 v47, v6

    move-object/from16 v48, v8

    move-object/from16 v20, v14

    move-object/from16 v8, v44

    move-object/from16 v6, p0

    .end local v44    # "resolvedType":Ljava/lang/String;
    .local v8, "resolvedType":Ljava/lang/String;
    .restart local v48    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :goto_28d
    goto :goto_2a3

    .line 1097
    .end local v48    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v8, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v44    # "resolvedType":Ljava/lang/String;
    :cond_28e
    move-object/from16 v47, v6

    move-object/from16 v48, v8

    move-object/from16 v20, v14

    move-object/from16 v8, v44

    move-object/from16 v6, p0

    .end local v44    # "resolvedType":Ljava/lang/String;
    .local v8, "resolvedType":Ljava/lang/String;
    .restart local v48    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    goto :goto_2a3

    .line 1096
    .end local v48    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v8, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v44    # "resolvedType":Ljava/lang/String;
    :cond_299
    move-object/from16 v47, v6

    move-object/from16 v48, v8

    move-object/from16 v20, v14

    move-object/from16 v8, v44

    move-object/from16 v6, p0

    .line 1119
    .end local v44    # "resolvedType":Ljava/lang/String;
    .local v8, "resolvedType":Ljava/lang/String;
    .restart local v48    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :goto_2a3
    if-nez v21, :cond_2dd

    if-eqz v43, :cond_2dd

    .line 1123
    :try_start_2a7
    iget-object v0, v6, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-interface {v0, v14, v10, v8}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d1

    .line 1125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Activity being started in new voice task does not support: "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2cd
    .catch Landroid/os/RemoteException; {:try_start_2a7 .. :try_end_2cd} :catch_2d4

    .line 1127
    const/16 v0, -0x61

    move/from16 v21, v0

    .line 1132
    :cond_2d1
    move/from16 v14, v21

    goto :goto_2df

    .line 1129
    :catch_2d4
    move-exception v0

    .line 1130
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1131
    const/16 v21, -0x61

    move/from16 v14, v21

    goto :goto_2df

    .line 1135
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2dd
    move/from16 v14, v21

    .end local v21    # "err":I
    .local v14, "err":I
    :goto_2df
    if-nez v11, :cond_2e4

    .line 1136
    const/16 v33, 0x0

    goto :goto_2ea

    :cond_2e4
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    move-object/from16 v33, v0

    .line 1138
    .local v33, "resultRootTask":Lcom/android/server/wm/Task;
    :goto_2ea
    if-eqz v14, :cond_30a

    .line 1139
    if-eqz v11, :cond_2ff

    .line 1140
    const/16 v23, -0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v22, v11

    move-object/from16 v24, v15

    move/from16 v25, v4

    invoke-virtual/range {v22 .. v28}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1143
    :cond_2ff
    invoke-static {v13}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1145
    invoke-static {}, Lcom/android/server/wm/ActivityStarterStub;->get()Lcom/android/server/wm/ActivityStarterStub;

    move-result-object v0

    invoke-virtual {v0, v14, v10}, Lcom/android/server/wm/ActivityStarterStub;->logStartActivityError(ILandroid/content/Intent;)V

    .line 1146
    return v14

    .line 1150
    :cond_30a
    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;-><init>()V

    move-object v5, v0

    .line 1151
    .local v5, "checker":Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;
    iput-object v10, v5, Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;->orginalintent:Landroid/content/Intent;

    .line 1152
    iput-object v8, v5, Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;->resolvedType:Ljava/lang/String;

    .line 1153
    move/from16 v58, v14

    move/from16 v14, v42

    .end local v42    # "startFlags":I
    .local v14, "startFlags":I
    .local v58, "err":I
    iput v14, v5, Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;->startFlags:I

    .line 1154
    iput-object v11, v5, Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;->resultRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1155
    iget-object v0, v6, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object v0, v5, Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;->stackSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1156
    move/from16 v14, v55

    .end local v55    # "userId":I
    .local v14, "userId":I
    .restart local v42    # "startFlags":I
    iput v14, v5, Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;->userId:I

    .line 1158
    iget-object v0, v6, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    move-object/from16 v44, v3

    move-object/from16 v55, v12

    move-object/from16 v59, v20

    move-object/from16 v12, p1

    iget-boolean v3, v12, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    if-eqz v39, :cond_335

    const/16 v30, 0x1

    goto :goto_337

    :cond_335
    const/16 v30, 0x0

    :goto_337
    move-object/from16 v20, v0

    move-object/from16 v21, v10

    move-object/from16 v22, v7

    move-object/from16 v23, v15

    move/from16 v24, v4

    move/from16 v25, v9

    move/from16 v26, v2

    move-object/from16 v27, v1

    move-object/from16 v28, v57

    move/from16 v29, v3

    move-object/from16 v31, v40

    move-object/from16 v32, v11

    move-object/from16 v34, v5

    invoke-virtual/range {v20 .. v34}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    move/from16 v20, v0

    .line 1162
    .local v20, "abort":Z
    iget-object v0, v6, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v3, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v31, v15

    move-object v15, v1

    .end local v1    # "callingPackage":Ljava/lang/String;
    .local v15, "callingPackage":Ljava/lang/String;
    .local v31, "resultWho":Ljava/lang/String;
    move-object v1, v10

    move/from16 v25, v2

    .end local v2    # "callingUid":I
    .local v25, "callingUid":I
    move-object/from16 v21, v3

    move-object/from16 v32, v38

    move-object/from16 v60, v44

    .end local v38    # "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    .local v32, "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    move v3, v9

    move/from16 v34, v4

    .end local v4    # "requestCode":I
    .local v34, "requestCode":I
    move-object v4, v8

    move-object/from16 v61, v5

    move-object/from16 v38, v18

    .end local v5    # "checker":Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;
    .end local v18    # "resultTo":Landroid/os/IBinder;
    .local v38, "resultTo":Landroid/os/IBinder;
    .local v61, "checker":Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;
    move-object/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    or-int v0, v20, v0

    .line 1164
    .end local v20    # "abort":Z
    .local v0, "abort":Z
    iget-object v2, v6, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getPermissionPolicyInternal()Lcom/android/server/policy/PermissionPolicyInternal;

    move-result-object v2

    move/from16 v5, v25

    .end local v25    # "callingUid":I
    .local v5, "callingUid":I
    invoke-virtual {v2, v10, v5, v15}, Lcom/android/server/policy/PermissionPolicyInternal;->checkStartActivity(Landroid/content/Intent;ILjava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v1

    or-int v18, v0, v2

    .line 1168
    .end local v0    # "abort":Z
    .local v18, "abort":Z
    if-eqz v13, :cond_397

    .line 1169
    iget-object v0, v6, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    move-object/from16 v4, v40

    .end local v40    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v4, "callerApp":Lcom/android/server/wm/WindowProcessController;
    invoke-virtual {v13, v10, v7, v4, v0}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_39a

    .end local v4    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v40    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_397
    move-object/from16 v4, v40

    .end local v40    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v4    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    const/4 v0, 0x0

    :goto_39a
    move-object v3, v11

    move-object/from16 v40, v43

    move-object/from16 v2, v46

    .end local v11    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v43    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .local v3, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .local v40, "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    move-object v11, v0

    .line 1171
    .local v11, "checkedOptions":Landroid/app/ActivityOptions;
    const/16 v20, 0x0

    .line 1172
    .local v20, "restrictedBgActivity":Z
    if-nez v18, :cond_40f

    .line 1174
    move-object/from16 v62, v13

    move/from16 v63, v14

    .end local v13    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local v14    # "userId":I
    .local v62, "options":Lcom/android/server/wm/SafeActivityOptions;
    .local v63, "userId":I
    const-wide/16 v13, 0x20

    :try_start_3aa
    const-string/jumbo v0, "shouldAbortBackgroundActivityStart"

    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1176
    iget-object v0, v12, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    iget-boolean v1, v12, Lcom/android/server/wm/ActivityStarter$Request;->allowBackgroundActivityStart:Z
    :try_end_3b4
    .catchall {:try_start_3aa .. :try_end_3b4} :catchall_3f0

    move/from16 v21, v1

    move-object/from16 v1, p0

    move-object/from16 v64, v2

    move v2, v5

    move-object/from16 v65, v3

    .end local v3    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .local v65, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    move v3, v9

    move-object/from16 v66, v4

    .end local v4    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v66, "callerApp":Lcom/android/server/wm/WindowProcessController;
    move-object v4, v15

    move/from16 v25, v5

    .end local v5    # "callingUid":I
    .restart local v25    # "callingUid":I
    move/from16 v5, v37

    move-object/from16 v26, v35

    move/from16 v35, v42

    move-object/from16 v67, v47

    .end local v42    # "startFlags":I
    .local v26, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v35, "startFlags":I
    move/from16 v6, v36

    move-object/from16 v27, v7

    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v27, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v7, v66

    move-object/from16 v28, v8

    move-object/from16 v69, v45

    move-object/from16 v68, v48

    .end local v8    # "resolvedType":Ljava/lang/String;
    .end local v48    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v28, "resolvedType":Ljava/lang/String;
    .local v68, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    move-object v8, v0

    move-object/from16 v29, v19

    move-object/from16 v30, v39

    move/from16 v39, v37

    move/from16 v37, v9

    .end local v9    # "callingPid":I
    .end local v19    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v29, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v30, "inTask":Lcom/android/server/wm/Task;
    .local v37, "callingPid":I
    .local v39, "realCallingUid":I
    move/from16 v9, v21

    move-object/from16 v42, v10

    .end local v10    # "intent":Landroid/content/Intent;
    .local v42, "intent":Landroid/content/Intent;
    :try_start_3e4
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/wm/ActivityStarter;->shouldAbortBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLandroid/content/Intent;Landroid/app/ActivityOptions;)Z

    move-result v0
    :try_end_3e8
    .catchall {:try_start_3e4 .. :try_end_3e8} :catchall_3ee

    move/from16 v20, v0

    .line 1181
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 1182
    goto :goto_433

    .line 1181
    :catchall_3ee
    move-exception v0

    goto :goto_40b

    .end local v25    # "callingUid":I
    .end local v26    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v27    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v28    # "resolvedType":Ljava/lang/String;
    .end local v29    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v30    # "inTask":Lcom/android/server/wm/Task;
    .end local v65    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v66    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v68    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v3    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v4    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v5    # "callingUid":I
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v8    # "resolvedType":Ljava/lang/String;
    .restart local v9    # "callingPid":I
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v19    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v35, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v37, "realCallingUid":I
    .local v39, "inTask":Lcom/android/server/wm/Task;
    .local v42, "startFlags":I
    .restart local v48    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :catchall_3f0
    move-exception v0

    move-object/from16 v65, v3

    move-object/from16 v66, v4

    move/from16 v25, v5

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v29, v19

    move-object/from16 v26, v35

    move-object/from16 v30, v39

    move/from16 v35, v42

    move-object/from16 v68, v48

    move-object/from16 v42, v10

    move/from16 v39, v37

    move/from16 v37, v9

    .end local v3    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v5    # "callingUid":I
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v8    # "resolvedType":Ljava/lang/String;
    .end local v9    # "callingPid":I
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v19    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v48    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v25    # "callingUid":I
    .restart local v26    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v27    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v28    # "resolvedType":Ljava/lang/String;
    .restart local v29    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v30    # "inTask":Lcom/android/server/wm/Task;
    .local v35, "startFlags":I
    .local v37, "callingPid":I
    .local v39, "realCallingUid":I
    .local v42, "intent":Landroid/content/Intent;
    .restart local v65    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v66    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v68    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :goto_40b
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 1182
    throw v0

    .line 1172
    .end local v25    # "callingUid":I
    .end local v26    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v27    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v28    # "resolvedType":Ljava/lang/String;
    .end local v29    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v30    # "inTask":Lcom/android/server/wm/Task;
    .end local v62    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local v63    # "userId":I
    .end local v65    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v66    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v68    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v3    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v4    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v5    # "callingUid":I
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v8    # "resolvedType":Ljava/lang/String;
    .restart local v9    # "callingPid":I
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v13    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v14    # "userId":I
    .restart local v19    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v35, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v37, "realCallingUid":I
    .local v39, "inTask":Lcom/android/server/wm/Task;
    .local v42, "startFlags":I
    .restart local v48    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_40f
    move-object/from16 v64, v2

    move-object/from16 v65, v3

    move-object/from16 v66, v4

    move/from16 v25, v5

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v62, v13

    move/from16 v63, v14

    move-object/from16 v29, v19

    move-object/from16 v26, v35

    move-object/from16 v30, v39

    move/from16 v35, v42

    move-object/from16 v69, v45

    move-object/from16 v67, v47

    move-object/from16 v68, v48

    move-object/from16 v42, v10

    move/from16 v39, v37

    move/from16 v37, v9

    .line 1186
    .end local v3    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v5    # "callingUid":I
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v8    # "resolvedType":Ljava/lang/String;
    .end local v9    # "callingPid":I
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v13    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local v14    # "userId":I
    .end local v19    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v48    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v25    # "callingUid":I
    .restart local v26    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v27    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v28    # "resolvedType":Ljava/lang/String;
    .restart local v29    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v30    # "inTask":Lcom/android/server/wm/Task;
    .local v35, "startFlags":I
    .local v37, "callingPid":I
    .local v39, "realCallingUid":I
    .local v42, "intent":Landroid/content/Intent;
    .restart local v62    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v63    # "userId":I
    .restart local v65    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v66    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v68    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :goto_433
    if-nez v20, :cond_453

    .line 1187
    invoke-static {}, Lcom/android/server/wm/ActivityStarterStub;->get()Lcom/android/server/wm/ActivityStarterStub;

    move-result-object v1

    move-object/from16 v2, v42

    move/from16 v3, v25

    move/from16 v4, v37

    move-object v5, v15

    move/from16 v6, v39

    move/from16 v7, v36

    move-object/from16 v8, v27

    move-object/from16 v9, p1

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/ActivityStarterStub;->isAllowedStartActivity(Landroid/content/Intent;IILjava/lang/String;IILandroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityStarter$Request;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    move/from16 v20, v0

    move/from16 v70, v20

    goto :goto_455

    .line 1186
    :cond_453
    move/from16 v70, v20

    .line 1193
    .end local v20    # "restrictedBgActivity":Z
    .local v70, "restrictedBgActivity":Z
    :goto_455
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move-object v2, v15

    move-object v3, v11

    move-object/from16 v4, v66

    move-object/from16 v5, v42

    move/from16 v6, v63

    move-object/from16 v7, v27

    move-object/from16 v8, v68

    invoke-static/range {v0 .. v8}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->modifyLaunchActivityOptionIfNeed(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/RootWindowContainer;Ljava/lang/String;Landroid/app/ActivityOptions;Lcom/android/server/wm/WindowProcessController;Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityRecord;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 1195
    .end local v11    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v0, "checkedOptions":Landroid/app/ActivityOptions;
    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1, v0}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->checkFreeformSupport(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/app/ActivityOptions;)V

    .line 1197
    iget-boolean v1, v12, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    if-eqz v1, :cond_484

    .line 1198
    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    .line 1199
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStartController;->getPendingRemoteAnimationRegistry()Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    move-result-object v1

    .line 1200
    invoke-virtual {v1, v15, v0}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->overrideOptionsIfNeeded(Ljava/lang/String;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v0

    move-object v10, v0

    goto :goto_485

    .line 1197
    :cond_484
    move-object v10, v0

    .line 1202
    .end local v0    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v10, "checkedOptions":Landroid/app/ActivityOptions;
    :goto_485
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_4c2

    .line 1206
    :try_start_48b
    invoke-virtual/range {v42 .. v42}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    .line 1207
    .local v0, "watchIntent":Landroid/content/Intent;
    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;
    :try_end_493
    .catch Landroid/os/RemoteException; {:try_start_48b .. :try_end_493} :catch_4b7
    .catch Ljava/lang/NullPointerException; {:try_start_48b .. :try_end_493} :catch_4ac

    move-object/from16 v11, v27

    .end local v27    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v11, "aInfo":Landroid/content/pm/ActivityInfo;
    :try_start_495
    iget-object v2, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1
    :try_end_49d
    .catch Landroid/os/RemoteException; {:try_start_495 .. :try_end_49d} :catch_4a8
    .catch Ljava/lang/NullPointerException; {:try_start_495 .. :try_end_49d} :catch_4a6

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    or-int v18, v18, v1

    .line 1213
    .end local v0    # "watchIntent":Landroid/content/Intent;
    move-object/from16 v13, v60

    move/from16 v60, v18

    goto :goto_4c8

    .line 1211
    :catch_4a6
    move-exception v0

    goto :goto_4af

    .line 1209
    :catch_4a8
    move-exception v0

    move-object/from16 v13, v60

    goto :goto_4bc

    .line 1211
    .end local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v27    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_4ac
    move-exception v0

    move-object/from16 v11, v27

    .line 1212
    .end local v27    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v0, "e":Ljava/lang/NullPointerException;
    .restart local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_4af
    const-string v1, "IActivityController activityStarting catch NullPointerException"

    move-object/from16 v13, v60

    invoke-static {v13, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4c6

    .line 1209
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v27    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_4b7
    move-exception v0

    move-object/from16 v11, v27

    move-object/from16 v13, v60

    .line 1210
    .end local v27    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_4bc
    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 1213
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_4c6

    .line 1202
    .end local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v27    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_4c2
    move-object/from16 v11, v27

    move-object/from16 v13, v60

    .line 1216
    .end local v27    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_4c6
    move/from16 v60, v18

    .end local v18    # "abort":Z
    .local v60, "abort":Z
    :goto_4c8
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    move-object/from16 v18, v0

    move/from16 v19, v63

    move/from16 v20, v36

    move/from16 v21, v39

    move/from16 v22, v35

    move-object/from16 v23, v15

    move-object/from16 v24, v57

    invoke-virtual/range {v18 .. v24}, Lcom/android/server/wm/ActivityStartInterceptor;->setStates(IIIILjava/lang/String;Ljava/lang/String;)V

    .line 1218
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    move-object/from16 v1, v42

    move-object/from16 v2, v26

    move-object v3, v11

    move-object/from16 v4, v28

    move-object/from16 v5, v30

    move/from16 v6, v37

    move/from16 v7, v25

    move-object v8, v10

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/ActivityStartInterceptor;->intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/Task;IILandroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_519

    .line 1222
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 1223
    .end local v42    # "intent":Landroid/content/Intent;
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v6, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 1224
    .end local v26    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v6, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v7, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 1225
    .end local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v8, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 1226
    .end local v28    # "resolvedType":Ljava/lang/String;
    .restart local v8    # "resolvedType":Ljava/lang/String;
    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    .line 1227
    .end local v30    # "inTask":Lcom/android/server/wm/Task;
    .local v1, "inTask":Lcom/android/server/wm/Task;
    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget v2, v2, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 1228
    .end local v37    # "callingPid":I
    .local v2, "callingPid":I
    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget v3, v3, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 1229
    .end local v25    # "callingUid":I
    .local v3, "callingUid":I
    iget-object v4, v9, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v10, v4, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 1233
    const/4 v4, 0x0

    move/from16 v37, v2

    move v2, v3

    move-object v11, v10

    move-object v10, v0

    move-object v0, v1

    .end local v29    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v4, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    goto :goto_527

    .line 1218
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "inTask":Lcom/android/server/wm/Task;
    .end local v2    # "callingPid":I
    .end local v3    # "callingUid":I
    .end local v4    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v8    # "resolvedType":Ljava/lang/String;
    .restart local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v25    # "callingUid":I
    .restart local v26    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v28    # "resolvedType":Ljava/lang/String;
    .restart local v29    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v30    # "inTask":Lcom/android/server/wm/Task;
    .restart local v37    # "callingPid":I
    .restart local v42    # "intent":Landroid/content/Intent;
    :cond_519
    move-object v7, v11

    move/from16 v2, v25

    move-object/from16 v6, v26

    move-object/from16 v8, v28

    move-object/from16 v4, v29

    move-object/from16 v0, v30

    move-object v11, v10

    move-object/from16 v10, v42

    .line 1236
    .end local v25    # "callingUid":I
    .end local v26    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v28    # "resolvedType":Ljava/lang/String;
    .end local v29    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v30    # "inTask":Lcom/android/server/wm/Task;
    .end local v42    # "intent":Landroid/content/Intent;
    .local v0, "inTask":Lcom/android/server/wm/Task;
    .local v2, "callingUid":I
    .restart local v4    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v8    # "resolvedType":Ljava/lang/String;
    .local v10, "intent":Landroid/content/Intent;
    .local v11, "checkedOptions":Landroid/app/ActivityOptions;
    :goto_527
    if-eqz v60, :cond_544

    .line 1237
    move-object/from16 v5, v65

    .end local v65    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .local v5, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_53e

    .line 1238
    const/16 v23, -0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v22, v5

    move-object/from16 v24, v31

    move/from16 v25, v34

    invoke-virtual/range {v22 .. v28}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1243
    :cond_53e
    invoke-static {v11}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1244
    const/16 v1, 0x66

    return v1

    .line 1248
    .end local v5    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v65    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_544
    move-object/from16 v5, v65

    .end local v65    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v5    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v3, v61

    .end local v61    # "checker":Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;
    .local v3, "checker":Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;
    iget-object v1, v3, Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;->newAInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_557

    .line 1249
    iget-object v6, v3, Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;->newRInfo:Landroid/content/pm/ResolveInfo;

    .line 1250
    iget-object v7, v3, Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;->newAInfo:Landroid/content/pm/ActivityInfo;

    .line 1251
    iget-object v10, v3, Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;->newIntent:Landroid/content/Intent;

    .line 1252
    const/4 v8, 0x0

    .line 1253
    move/from16 v2, v39

    .line 1254
    move/from16 v37, v36

    .line 1260
    :cond_557
    if-eqz v7, :cond_694

    .line 1261
    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget-object v14, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v61, v3

    move/from16 v3, v63

    .end local v63    # "userId":I
    .local v3, "userId":I
    .restart local v61    # "checker":Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;
    invoke-virtual {v1, v14, v3}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_683

    .line 1263
    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v43, 0x2

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    move-object/from16 v18, v4

    const/4 v14, 0x1

    .end local v4    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v18, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    new-array v4, v14, [Landroid/content/Intent;

    const/16 v19, 0x0

    aput-object v10, v4, v19

    move-object/from16 v20, v6

    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v20, "rInfo":Landroid/content/pm/ResolveInfo;
    new-array v6, v14, [Ljava/lang/String;

    aput-object v8, v6, v19

    const/high16 v53, 0x50000000

    const/16 v54, 0x0

    move-object/from16 v42, v1

    move-object/from16 v44, v15

    move-object/from16 v45, v57

    move/from16 v46, v2

    move/from16 v47, v3

    move-object/from16 v51, v4

    move-object/from16 v52, v6

    invoke-virtual/range {v42 .. v54}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 1269
    .local v1, "target":Landroid/content/IIntentSender;
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1271
    .local v4, "newIntent":Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v6

    .line 1272
    .local v6, "flags":I
    const/high16 v14, 0x800000

    or-int/2addr v6, v14

    .line 1283
    const/high16 v14, 0x10080000

    and-int/2addr v14, v6

    if-eqz v14, :cond_5b0

    .line 1284
    const/high16 v14, 0x8000000

    or-int/2addr v6, v14

    .line 1286
    :cond_5b0
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1288
    iget-object v14, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v19, v2

    .end local v2    # "callingUid":I
    .local v19, "callingUid":I
    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v4, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1289
    new-instance v2, Landroid/content/IntentSender;

    invoke-direct {v2, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v14, "android.intent.extra.INTENT"

    invoke-virtual {v4, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1290
    if-eqz v5, :cond_5ce

    .line 1291
    const-string v2, "android.intent.extra.RESULT_NEEDED"

    const/4 v14, 0x1

    invoke-virtual {v4, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1293
    :cond_5ce
    move-object v10, v4

    .line 1297
    const/4 v2, 0x0

    .line 1299
    .end local v18    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v2, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    const/4 v8, 0x0

    .line 1300
    move/from16 v14, v39

    .line 1301
    .end local v19    # "callingUid":I
    .local v14, "callingUid":I
    move/from16 v18, v36

    .line 1303
    .end local v37    # "callingPid":I
    .local v18, "callingPid":I
    move-object/from16 v21, v1

    .end local v1    # "target":Landroid/content/IIntentSender;
    .local v21, "target":Landroid/content/IIntentSender;
    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/16 v28, 0x0

    move-object/from16 v22, v2

    .end local v2    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v22, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    iget v2, v12, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 1304
    move-object/from16 v23, v7

    move/from16 v7, v39

    .end local v39    # "realCallingUid":I
    .local v7, "realCallingUid":I
    .local v23, "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-static {v14, v7, v2}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v29

    .line 1303
    move-object/from16 v24, v1

    move-object/from16 v25, v10

    move-object/from16 v26, v8

    move/from16 v27, v3

    move/from16 v30, v18

    invoke-virtual/range {v24 .. v30}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1308
    .end local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v1, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    move-object/from16 v16, v4

    move-object/from16 v24, v8

    move/from16 v8, v35

    const/4 v4, 0x0

    .end local v4    # "newIntent":Landroid/content/Intent;
    .end local v35    # "startFlags":I
    .local v8, "startFlags":I
    .local v16, "newIntent":Landroid/content/Intent;
    .local v24, "resolvedType":Ljava/lang/String;
    invoke-virtual {v2, v10, v1, v8, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 1311
    .end local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    sget-boolean v19, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    if-eqz v19, :cond_66d

    .line 1312
    iget-object v4, v9, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1313
    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1319
    .local v4, "focusedRootTask":Lcom/android/server/wm/Task;
    move-object/from16 v19, v1

    .end local v1    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v19, "rInfo":Landroid/content/pm/ResolveInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v2

    move-object/from16 v2, v69

    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v20, "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v64

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v63, v3

    move/from16 v26, v6

    const/4 v2, 0x0

    const/4 v3, 0x1

    .end local v3    # "userId":I
    .end local v6    # "flags":I
    .local v26, "flags":I
    .restart local v63    # "userId":I
    invoke-virtual {v10, v3, v3, v3, v2}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v6, v67

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " on display "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1321
    if-nez v4, :cond_647

    move v6, v2

    goto :goto_64b

    .line 1322
    :cond_647
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v6

    :goto_64b
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v6, v59

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v6, v18

    .end local v18    # "callingPid":I
    .local v6, "callingPid":I
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v55

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1319
    invoke-static {v13, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_678

    .line 1311
    .end local v4    # "focusedRootTask":Lcom/android/server/wm/Task;
    .end local v19    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v20    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "flags":I
    .end local v63    # "userId":I
    .restart local v1    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "userId":I
    .local v6, "flags":I
    .restart local v18    # "callingPid":I
    :cond_66d
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move/from16 v63, v3

    move/from16 v26, v6

    move/from16 v6, v18

    const/4 v3, 0x1

    .line 1332
    .end local v1    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "userId":I
    .end local v16    # "newIntent":Landroid/content/Intent;
    .end local v18    # "callingPid":I
    .end local v21    # "target":Landroid/content/IIntentSender;
    .local v6, "callingPid":I
    .restart local v19    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v20    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v63    # "userId":I
    :goto_678
    move/from16 v37, v6

    move-object v6, v10

    move v2, v14

    move-object/from16 v10, v19

    move-object/from16 v4, v22

    move-object/from16 v1, v24

    goto :goto_6ad

    .line 1261
    .end local v14    # "callingUid":I
    .end local v19    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v20    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v22    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v24    # "resolvedType":Ljava/lang/String;
    .end local v63    # "userId":I
    .local v2, "callingUid":I
    .restart local v3    # "userId":I
    .local v4, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v6, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v7, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v8, "resolvedType":Ljava/lang/String;
    .restart local v35    # "startFlags":I
    .restart local v37    # "callingPid":I
    .restart local v39    # "realCallingUid":I
    :cond_683
    move/from16 v19, v2

    move/from16 v63, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v6

    move-object/from16 v23, v7

    move-object v1, v8

    move/from16 v8, v35

    move/from16 v7, v39

    const/4 v3, 0x1

    .end local v2    # "callingUid":I
    .end local v3    # "userId":I
    .end local v4    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v35    # "startFlags":I
    .end local v39    # "realCallingUid":I
    .local v1, "resolvedType":Ljava/lang/String;
    .local v7, "realCallingUid":I
    .local v8, "startFlags":I
    .local v18, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v19, "callingUid":I
    .local v20, "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v63    # "userId":I
    goto :goto_6a4

    .line 1260
    .end local v1    # "resolvedType":Ljava/lang/String;
    .end local v18    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v19    # "callingUid":I
    .end local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v61    # "checker":Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;
    .restart local v2    # "callingUid":I
    .local v3, "checker":Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;
    .restart local v4    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v7, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v8, "resolvedType":Ljava/lang/String;
    .restart local v35    # "startFlags":I
    .restart local v39    # "realCallingUid":I
    :cond_694
    move/from16 v19, v2

    move-object/from16 v61, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v6

    move-object/from16 v23, v7

    move-object v1, v8

    move/from16 v8, v35

    move/from16 v7, v39

    const/4 v3, 0x1

    .line 1332
    .end local v2    # "callingUid":I
    .end local v3    # "checker":Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;
    .end local v4    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v35    # "startFlags":I
    .end local v39    # "realCallingUid":I
    .restart local v1    # "resolvedType":Ljava/lang/String;
    .local v7, "realCallingUid":I
    .local v8, "startFlags":I
    .restart local v18    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v19    # "callingUid":I
    .restart local v20    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v61    # "checker":Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;
    :goto_6a4
    move-object v6, v10

    move-object/from16 v4, v18

    move/from16 v2, v19

    move-object/from16 v10, v20

    move-object/from16 v20, v23

    .end local v18    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v19    # "callingUid":I
    .end local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "callingUid":I
    .restart local v4    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v6, "intent":Landroid/content/Intent;
    .local v10, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v20, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_6ad
    if-eqz v10, :cond_6ec

    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    if-eqz v13, :cond_6ec

    .line 1333
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v14, v12, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    move-object/from16 v22, v41

    const/16 v21, 0x0

    .end local v41    # "caller":Landroid/app/IApplicationThread;
    .local v22, "caller":Landroid/app/IApplicationThread;
    move-object/from16 v12, p0

    move/from16 v23, v36

    move-object/from16 v24, v62

    const/4 v3, 0x0

    .end local v36    # "realCallingPid":I
    .end local v62    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .local v23, "realCallingPid":I
    .local v24, "options":Lcom/android/server/wm/SafeActivityOptions;
    move/from16 v25, v58

    move/from16 v16, v63

    const/16 v26, 0x1

    .end local v58    # "err":I
    .end local v63    # "userId":I
    .local v16, "userId":I
    .local v25, "err":I
    move-object/from16 v28, v15

    move/from16 v27, v16

    move-object/from16 v71, v31

    .end local v15    # "callingPackage":Ljava/lang/String;
    .end local v16    # "userId":I
    .end local v31    # "resultWho":Ljava/lang/String;
    .local v27, "userId":I
    .local v28, "callingPackage":Ljava/lang/String;
    .local v71, "resultWho":Ljava/lang/String;
    move-object/from16 v16, v57

    move-object/from16 v18, v1

    move/from16 v19, v27

    invoke-direct/range {v12 .. v19}, Lcom/android/server/wm/ActivityStarter;->createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    .line 1335
    const/4 v1, 0x0

    .line 1336
    move v2, v7

    .line 1337
    move/from16 v37, v23

    .line 1341
    const/4 v4, 0x0

    .line 1343
    iget-object v12, v9, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v12, v6, v10, v8, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v20

    move-object v13, v1

    move v14, v2

    move-object v15, v4

    move-object v12, v6

    move-object/from16 v6, v20

    move/from16 v4, v37

    goto :goto_706

    .line 1332
    .end local v22    # "caller":Landroid/app/IApplicationThread;
    .end local v23    # "realCallingPid":I
    .end local v24    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local v25    # "err":I
    .end local v27    # "userId":I
    .end local v28    # "callingPackage":Ljava/lang/String;
    .end local v71    # "resultWho":Ljava/lang/String;
    .restart local v15    # "callingPackage":Ljava/lang/String;
    .restart local v31    # "resultWho":Ljava/lang/String;
    .restart local v36    # "realCallingPid":I
    .restart local v41    # "caller":Landroid/app/IApplicationThread;
    .restart local v58    # "err":I
    .restart local v62    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v63    # "userId":I
    :cond_6ec
    move/from16 v26, v3

    move-object/from16 v28, v15

    move-object/from16 v71, v31

    move/from16 v23, v36

    move-object/from16 v22, v41

    move/from16 v25, v58

    move-object/from16 v24, v62

    move/from16 v27, v63

    const/16 v21, 0x0

    .line 1347
    .end local v15    # "callingPackage":Ljava/lang/String;
    .end local v31    # "resultWho":Ljava/lang/String;
    .end local v36    # "realCallingPid":I
    .end local v41    # "caller":Landroid/app/IApplicationThread;
    .end local v58    # "err":I
    .end local v62    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local v63    # "userId":I
    .restart local v22    # "caller":Landroid/app/IApplicationThread;
    .restart local v23    # "realCallingPid":I
    .restart local v24    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v25    # "err":I
    .restart local v27    # "userId":I
    .restart local v28    # "callingPackage":Ljava/lang/String;
    .restart local v71    # "resultWho":Ljava/lang/String;
    move-object v13, v1

    move v14, v2

    move-object v15, v4

    move-object v12, v6

    move-object/from16 v6, v20

    move/from16 v4, v37

    .end local v1    # "resolvedType":Ljava/lang/String;
    .end local v2    # "callingUid":I
    .end local v20    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v37    # "callingPid":I
    .local v4, "callingPid":I
    .local v6, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v12, "intent":Landroid/content/Intent;
    .local v13, "resolvedType":Ljava/lang/String;
    .restart local v14    # "callingUid":I
    .local v15, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    :goto_706
    if-nez v66, :cond_718

    move/from16 v3, v23

    .end local v23    # "realCallingPid":I
    .local v3, "realCallingPid":I
    if-lez v3, :cond_71a

    .line 1348
    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 1349
    .local v1, "wpc":Lcom/android/server/wm/WindowProcessController;
    if-eqz v1, :cond_71a

    .line 1350
    move-object v2, v1

    .end local v66    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v2, "callerApp":Lcom/android/server/wm/WindowProcessController;
    goto :goto_71c

    .line 1347
    .end local v1    # "wpc":Lcom/android/server/wm/WindowProcessController;
    .end local v2    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v3    # "realCallingPid":I
    .restart local v23    # "realCallingPid":I
    .restart local v66    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_718
    move/from16 v3, v23

    .line 1354
    .end local v23    # "realCallingPid":I
    .restart local v3    # "realCallingPid":I
    :cond_71a
    move-object/from16 v2, v66

    .end local v66    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v2    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :goto_71c
    if-eqz v6, :cond_730

    .line 1355
    invoke-static {}, Lcom/android/server/wm/ActivityStarterStub;->get()Lcom/android/server/wm/ActivityStarterStub;

    move-result-object v1

    move/from16 v23, v3

    .end local v3    # "realCallingPid":I
    .restart local v23    # "realCallingPid":I
    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v3, v11}, Lcom/android/server/wm/ActivityStarterStub;->isCarWithDisplay(Lcom/android/server/wm/RootWindowContainer;Landroid/app/ActivityOptions;)Z

    move-result v1

    if-eqz v1, :cond_732

    .line 1356
    const/4 v1, -0x1

    iput v1, v6, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    goto :goto_732

    .line 1354
    .end local v23    # "realCallingPid":I
    .restart local v3    # "realCallingPid":I
    :cond_730
    move/from16 v23, v3

    .line 1361
    .end local v3    # "realCallingPid":I
    .restart local v23    # "realCallingPid":I
    :cond_732
    :goto_732
    new-instance v1, Lcom/android/server/wm/ActivityRecord$Builder;

    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v1, v3}, Lcom/android/server/wm/ActivityRecord$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 1362
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord$Builder;->setCaller(Lcom/android/server/wm/WindowProcessController;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v1

    .line 1363
    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromPid(I)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v1

    .line 1364
    invoke-virtual {v1, v14}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromUid(I)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v1

    .line 1365
    move-object/from16 v3, v28

    .end local v28    # "callingPackage":Ljava/lang/String;
    .local v3, "callingPackage":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v1

    .line 1366
    move/from16 v16, v14

    move-object/from16 v14, v57

    .end local v57    # "callingFeatureId":Ljava/lang/String;
    .local v14, "callingFeatureId":Ljava/lang/String;
    .local v16, "callingUid":I
    invoke-virtual {v1, v14}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromFeature(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v1

    .line 1367
    invoke-virtual {v1, v12}, Lcom/android/server/wm/ActivityRecord$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v1

    .line 1368
    invoke-virtual {v1, v13}, Lcom/android/server/wm/ActivityRecord$Builder;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v1

    .line 1369
    invoke-virtual {v1, v6}, Lcom/android/server/wm/ActivityRecord$Builder;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v1

    move-object/from16 v18, v2

    .end local v2    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v18, "callerApp":Lcom/android/server/wm/WindowProcessController;
    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1370
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord$Builder;->setConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v1

    .line 1371
    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityRecord$Builder;->setResultTo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v1

    .line 1372
    move-object/from16 v2, v71

    .end local v71    # "resultWho":Ljava/lang/String;
    .local v2, "resultWho":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord$Builder;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v1

    .line 1373
    move-object/from16 v19, v13

    move/from16 v13, v34

    .end local v34    # "requestCode":I
    .local v13, "requestCode":I
    .local v19, "resolvedType":Ljava/lang/String;
    invoke-virtual {v1, v13}, Lcom/android/server/wm/ActivityRecord$Builder;->setRequestCode(I)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v1

    move-object/from16 v13, p1

    .end local v2    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .restart local v34    # "requestCode":I
    .restart local v71    # "resultWho":Ljava/lang/String;
    iget-boolean v2, v13, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 1374
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord$Builder;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v1

    if-eqz v40, :cond_78a

    move/from16 v2, v26

    goto :goto_78c

    :cond_78a
    move/from16 v2, v21

    .line 1375
    :goto_78c
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord$Builder;->setRootVoiceInteraction(Z)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v1

    .line 1376
    invoke-virtual {v1, v11}, Lcom/android/server/wm/ActivityRecord$Builder;->setActivityOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v1

    .line 1377
    move-object/from16 v2, v68

    .end local v68    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v2, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord$Builder;->setSourceRecord(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v1

    .line 1378
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord$Builder;->build()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1380
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    iput-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1382
    iput v7, v1, Lcom/android/server/wm/ActivityRecord;->realCallingUid:I

    .line 1384
    move-object/from16 v28, v3

    .end local v3    # "callingPackage":Ljava/lang/String;
    .restart local v28    # "callingPackage":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-nez v3, :cond_7ae

    if-eqz v2, :cond_7ae

    .line 1387
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iput-object v3, v1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 1396
    :cond_7ae
    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 1397
    .local v3, "homeProcess":Lcom/android/server/wm/WindowProcessController;
    if-eqz v3, :cond_7c1

    move-object/from16 v68, v2

    .end local v2    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v68    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v4

    .end local v4    # "callingPid":I
    .local v20, "callingPid":I
    iget v4, v3, Lcom/android/server/wm/WindowProcessController;->mUid:I

    if-ne v2, v4, :cond_7c5

    goto :goto_7c7

    .end local v20    # "callingPid":I
    .end local v68    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v4    # "callingPid":I
    :cond_7c1
    move-object/from16 v68, v2

    move/from16 v20, v4

    .end local v2    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "callingPid":I
    .restart local v20    # "callingPid":I
    .restart local v68    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_7c5
    move/from16 v26, v21

    .line 1399
    .local v26, "isHomeProcess":Z
    :goto_7c7
    if-nez v70, :cond_7d0

    if-nez v26, :cond_7d0

    .line 1400
    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->resumeAppSwitches()V

    .line 1404
    :cond_7d0
    if-eqz v6, :cond_7f3

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_7f3

    .line 1405
    iget v2, v1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v2, v4, :cond_7f0

    .line 1406
    invoke-static {}, Lcom/android/server/wm/ActivityStarterStub;->get()Lcom/android/server/wm/ActivityStarterStub;

    move-result-object v2

    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v29, v1

    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .local v29, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v4, v1}, Lcom/android/server/wm/ActivityStarterStub;->triggerLaunchMode(Ljava/lang/String;I)V

    goto :goto_7f5

    .line 1405
    .end local v29    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_7f0
    move-object/from16 v29, v1

    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v29    # "r":Lcom/android/server/wm/ActivityRecord;
    goto :goto_7f5

    .line 1404
    .end local v29    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_7f3
    move-object/from16 v29, v1

    .line 1411
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v29    # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_7f5
    iget-object v4, v13, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    const/16 v30, 0x1

    move-object/from16 v1, p0

    move-object/from16 v66, v18

    move-object/from16 v18, v68

    move-object/from16 v31, v71

    .end local v68    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v71    # "resultWho":Ljava/lang/String;
    .local v18, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v31    # "resultWho":Ljava/lang/String;
    .restart local v66    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    move-object/from16 v2, v29

    move-object/from16 v36, v3

    move-object/from16 v35, v28

    move-object/from16 v28, v61

    .end local v3    # "homeProcess":Lcom/android/server/wm/WindowProcessController;
    .end local v61    # "checker":Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;
    .local v28, "checker":Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;
    .local v35, "callingPackage":Ljava/lang/String;
    .local v36, "homeProcess":Lcom/android/server/wm/WindowProcessController;
    move-object/from16 v3, v18

    move/from16 v37, v20

    move-object/from16 v20, v4

    .end local v20    # "callingPid":I
    .restart local v37    # "callingPid":I
    move-object/from16 v4, v40

    move-object/from16 v39, v5

    .end local v5    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .local v39, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v5, v20

    move-object/from16 v20, v6

    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v20, "aInfo":Landroid/content/pm/ActivityInfo;
    move v6, v8

    move/from16 v41, v7

    .end local v7    # "realCallingUid":I
    .local v41, "realCallingUid":I
    move/from16 v7, v30

    move/from16 v30, v8

    .end local v8    # "startFlags":I
    .local v30, "startFlags":I
    move-object v8, v11

    move-object v9, v0

    move-object/from16 v42, v10

    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v42, "rInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v10, v32

    move-object/from16 v43, v11

    .end local v11    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v43, "checkedOptions":Landroid/app/ActivityOptions;
    move/from16 v11, v70

    move-object/from16 v44, v12

    .end local v12    # "intent":Landroid/content/Intent;
    .local v44, "intent":Landroid/content/Intent;
    move-object v12, v15

    invoke-direct/range {v1 .. v12}, Lcom/android/server/wm/ActivityStarter;->startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;ZLcom/android/server/uri/NeededUriGrants;)I

    move-result v1

    move-object/from16 v2, p0

    iput v1, v2, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    .line 1415
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_83d

    .line 1416
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v2, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    aput-object v3, v1, v21

    .line 1419
    :cond_83d
    iget v1, v2, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    return v1

    .line 959
    .end local v0    # "inTask":Lcom/android/server/wm/Task;
    .end local v14    # "callingFeatureId":Ljava/lang/String;
    .end local v15    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v16    # "callingUid":I
    .end local v17    # "verificationBundle":Landroid/os/Bundle;
    .end local v18    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v19    # "resolvedType":Ljava/lang/String;
    .end local v20    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v22    # "caller":Landroid/app/IApplicationThread;
    .end local v23    # "realCallingPid":I
    .end local v24    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local v25    # "err":I
    .end local v26    # "isHomeProcess":Z
    .end local v27    # "userId":I
    .end local v28    # "checker":Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;
    .end local v29    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v30    # "startFlags":I
    .end local v31    # "resultWho":Ljava/lang/String;
    .end local v32    # "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    .end local v33    # "resultRootTask":Lcom/android/server/wm/Task;
    .end local v34    # "requestCode":I
    .end local v35    # "callingPackage":Ljava/lang/String;
    .end local v36    # "homeProcess":Lcom/android/server/wm/WindowProcessController;
    .end local v37    # "callingPid":I
    .end local v38    # "resultTo":Landroid/os/IBinder;
    .end local v39    # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v40    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .end local v41    # "realCallingUid":I
    .end local v42    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v43    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v44    # "intent":Landroid/content/Intent;
    .end local v56    # "launchFlags":I
    .end local v60    # "abort":Z
    .end local v66    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v70    # "restrictedBgActivity":Z
    :cond_840
    move-object v13, v14

    move-object v2, v15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need to specify a reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getExternalResult(I)I
    .registers 2
    .param p0, "result"    # I

    .line 1448
    const/16 v0, 0x66

    if-eq p0, v0, :cond_6

    move v0, p0

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;
    .registers 14
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchFlags"    # I
    .param p3, "task"    # Lcom/android/server/wm/Task;
    .param p4, "aOptions"    # Landroid/app/ActivityOptions;

    .line 3494
    if-eqz p4, :cond_8

    .line 3495
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    move v6, v0

    .line 3496
    .local v6, "onTop":Z
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    move-object v5, v0

    .line 3497
    .local v5, "sourceTask":Lcom/android/server/wm/Task;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/RootWindowContainer;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;I)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method private getReusableTask()Lcom/android/server/wm/Task;
    .registers 11

    .line 3079
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1c

    .line 3080
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3081
    .local v0, "launchTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_1b

    .line 3082
    return-object v0

    .line 3084
    :cond_1b
    return-object v1

    .line 3092
    .end local v0    # "launchTask":Lcom/android/server/wm/Task;
    :cond_1c
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_2c

    const/high16 v2, 0x8000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_41

    .line 3094
    :cond_2c
    invoke-direct {p0, v4, v3}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-nez v0, :cond_41

    .line 3096
    invoke-static {}, Lcom/android/server/wm/ActivityStarterStub;->get()Lcom/android/server/wm/ActivityStarterStub;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarterStub;->isAppLockActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_3f

    goto :goto_41

    :cond_3f
    move v0, v5

    goto :goto_42

    :cond_41
    :goto_41
    move v0, v6

    .line 3100
    .local v0, "putIntoExistingTask":Z
    :goto_42
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-nez v2, :cond_4e

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_4e

    move v2, v6

    goto :goto_4f

    :cond_4e
    move v2, v5

    :goto_4f
    and-int/2addr v0, v2

    .line 3101
    const/4 v2, 0x0

    .line 3102
    .local v2, "intentActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_8e

    .line 3103
    iget v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v4, v7, :cond_6a

    .line 3106
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3107
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v6

    .line 3106
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/RootWindowContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_8e

    .line 3108
    :cond_6a
    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_82

    .line 3111
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v9, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq v3, v9, :cond_7d

    move v5, v6

    :cond_7d
    invoke-virtual {v4, v7, v8, v5}, Lcom/android/server/wm/RootWindowContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_8e

    .line 3118
    :cond_82
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 3119
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/RootWindowContainer;->findTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 3125
    :cond_8e
    :goto_8e
    if-eqz v2, :cond_aa

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_aa

    .line 3126
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_aa

    .line 3130
    const/4 v2, 0x0

    .line 3133
    :cond_aa
    if-eqz v2, :cond_c3

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3134
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    if-nez v3, :cond_ba

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 3135
    :cond_ba
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eq v3, v4, :cond_c3

    .line 3137
    const/4 v2, 0x0

    .line 3141
    :cond_c3
    const/4 v3, 0x5

    const-string v4, "ActivityTaskManager"

    if-eqz v2, :cond_f2

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v5, :cond_f2

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v5

    if-ne v5, v3, :cond_f2

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 3142
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getForceLaunchNewTask()Z

    move-result v5

    if-eqz v5, :cond_f2

    .line 3143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "forceLaunchNewTask intentActivity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3144
    const/4 v2, 0x0

    goto :goto_103

    .line 3145
    :cond_f2
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v5

    if-eqz v5, :cond_103

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v5, :cond_103

    .line 3146
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getForceLaunchNewTask()Z

    move-result v5

    if-eqz v5, :cond_103

    .line 3147
    return-object v1

    .line 3150
    :cond_103
    :goto_103
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-interface {v5, v6}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->adjustedReuseableFreeformTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/Task;

    move-result-object v5

    .line 3151
    .local v5, "adjustedFreeformTask":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_138

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_138

    .line 3152
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v6

    if-eq v6, v3, :cond_138

    if-eqz v5, :cond_138

    .line 3154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjust reuseable freeform task: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    return-object v5

    .line 3160
    :cond_138
    invoke-static {}, Lcom/android/server/wm/ActivityStarterStub;->get()Lcom/android/server/wm/ActivityStarterStub;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v2, v6}, Lcom/android/server/wm/ActivityStarterStub;->checkIntentActivityForAppLock(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_14b

    .line 3161
    const-string/jumbo v3, "use new task due to unexpected activity found for app lock"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    const/4 v2, 0x0

    .line 3165
    :cond_14b
    if-eqz v2, :cond_151

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    :cond_151
    return-object v1
.end method

.method private handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 14
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1429
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1430
    .local v0, "abort":Z
    if-nez v0, :cond_c

    .line 1431
    const/4 v1, 0x0

    return v1

    .line 1433
    :cond_c
    iget-object v9, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1434
    .local v9, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    iget-object v10, p1, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 1435
    .local v10, "resultWho":Ljava/lang/String;
    iget v11, p1, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 1436
    .local v11, "requestCode":I
    if-eqz v9, :cond_1e

    .line 1437
    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    move-object v4, v10

    move v5, v11

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1442
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOptions()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1443
    return v1
.end method

.method private handleStartResult(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/Transition;Landroid/window/RemoteTransition;)Lcom/android/server/wm/Task;
    .registers 15
    .param p1, "started"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "result"    # I
    .param p4, "newTransition"    # Lcom/android/server/wm/Transition;
    .param p5, "remoteTransition"    # Landroid/window/RemoteTransition;

    .line 1896
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 1897
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1899
    .local v0, "currentRootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_d

    move-object v2, v0

    goto :goto_f

    :cond_d
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 1901
    .local v2, "startedActivityRootTask":Lcom/android/server/wm/Task;
    :goto_f
    invoke-static {p3}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_98

    if-nez v2, :cond_1b

    goto/16 :goto_98

    .line 1926
    :cond_1b
    if-eqz p2, :cond_26

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getTaskAlwaysOnTop()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1927
    invoke-virtual {v2, v5}, Lcom/android/server/wm/Task;->setAlwaysOnTop(Z)V

    .line 1933
    :cond_26
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1934
    .local v3, "currentTop":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_3b

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->shouldUpdateConfigForDisplayChanged()Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 1935
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1936
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v7

    .line 1935
    invoke-virtual {v6, v3, v7, v5, v1}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 1940
    :cond_3b
    iget-boolean v6, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v6, :cond_58

    iget-boolean v6, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v6, :cond_58

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v7, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 1941
    invoke-virtual {v6, v7}, Lcom/android/server/wm/RootWindowContainer;->hasVisibleWindowAboveButDoesNotOwnNotificationShade(I)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 1946
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v6

    .line 1947
    .local v6, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v6, :cond_58

    .line 1949
    invoke-interface {v6}, Lcom/android/server/statusbar/StatusBarManagerInternal;->collapsePanels()V

    .line 1954
    .end local v6    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_58
    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 1955
    .local v6, "transitionController":Lcom/android/server/wm/TransitionController;
    if-eqz p3, :cond_61

    const/4 v7, 0x2

    if-ne p3, v7, :cond_60

    goto :goto_61

    :cond_60
    move v5, v1

    .line 1956
    .local v5, "isStarted":Z
    :cond_61
    :goto_61
    if-eqz v5, :cond_67

    .line 1959
    invoke-virtual {v6, p1}, Lcom/android/server/wm/TransitionController;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_74

    .line 1960
    :cond_67
    const/4 v7, 0x3

    if-ne p3, v7, :cond_74

    if-eqz p4, :cond_74

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v7, :cond_74

    .line 1964
    invoke-virtual {p4}, Lcom/android/server/wm/Transition;->abort()V

    .line 1965
    const/4 p4, 0x0

    .line 1967
    :cond_74
    :goto_74
    if-eqz p2, :cond_83

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getTransientLaunch()Z

    move-result v7

    if-eqz v7, :cond_83

    .line 1970
    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/TransitionController;->setTransientLaunch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    .line 1972
    :cond_83
    if-eqz p4, :cond_92

    .line 1973
    nop

    .line 1974
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    if-nez v1, :cond_8e

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1973
    :cond_8e
    invoke-virtual {v6, p4, v1, p5, v4}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    goto :goto_97

    .line 1976
    :cond_92
    if-eqz v5, :cond_97

    .line 1978
    invoke-virtual {v6, p1, v1}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 1980
    :cond_97
    :goto_97
    return-object v2

    .line 1905
    .end local v3    # "currentTop":Lcom/android/server/wm/ActivityRecord;
    .end local v5    # "isStarted":Z
    .end local v6    # "transitionController":Lcom/android/server/wm/TransitionController;
    :cond_98
    :goto_98
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_a9

    .line 1906
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const-string/jumbo v3, "startActivity"

    invoke-virtual {v1, v3, v5}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    goto :goto_bc

    .line 1907
    :cond_a9
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_bc

    .line 1908
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1912
    :cond_bc
    :goto_bc
    if-eqz v2, :cond_d9

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 1913
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->hasActivity()Z

    move-result v1

    if-nez v1, :cond_d9

    .line 1914
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_d9

    iget-boolean v1, v2, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v1, :cond_d9

    .line 1916
    const-string v1, "handleStartResult"

    invoke-virtual {v2, v1}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    .line 1918
    :cond_d9
    if-eqz p4, :cond_de

    .line 1919
    invoke-virtual {p4}, Lcom/android/server/wm/Transition;->abort()V

    .line 1921
    :cond_de
    return-object v4
.end method

.method private inTopNonFinishingTask(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 7
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 3297
    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_2f

    .line 3301
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 3302
    .local v1, "rTask":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 3303
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_1d

    :cond_19
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 3304
    .local v2, "parent":Lcom/android/server/wm/Task;
    :goto_1d
    if-eqz v2, :cond_24

    .line 3305
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_25

    :cond_24
    const/4 v3, 0x0

    .line 3307
    .local v3, "topNonFinishingActivity":Lcom/android/server/wm/ActivityRecord;
    :goto_25
    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-ne v4, v1, :cond_2e

    const/4 v0, 0x1

    :cond_2e
    return v0

    .line 3298
    .end local v1    # "rTask":Lcom/android/server/wm/Task;
    .end local v2    # "parent":Lcom/android/server/wm/Task;
    .end local v3    # "topNonFinishingActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_2f
    :goto_2f
    return v0
.end method

.method static isDocumentLaunchesIntoExisting(I)Z
    .registers 2
    .param p0, "flags"    # I

    .line 3510
    const/high16 v0, 0x80000

    and-int/2addr v0, p0

    if-eqz v0, :cond_c

    const/high16 v0, 0x8000000

    and-int/2addr v0, p0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isHomeApp(ILjava/lang/String;)Z
    .registers 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1460
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    .line 1462
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    if-ne p1, v0, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    return v1

    .line 1464
    :cond_13
    if-nez p2, :cond_16

    .line 1465
    return v2

    .line 1467
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1468
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 1469
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1468
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManagerInternal;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 1470
    .local v0, "activity":Landroid/content/ComponentName;
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_32

    :cond_31
    move v1, v2

    :goto_32
    return v1
.end method

.method private isLaunchModeOneOf(II)Z
    .registers 4
    .param p1, "mode1"    # I
    .param p2, "mode2"    # I

    .line 3502
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq p1, v0, :cond_9

    if-ne p2, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method private isLaunchModeOneOf(III)Z
    .registers 5
    .param p1, "mode1"    # I
    .param p2, "mode2"    # I
    .param p3, "mode3"    # I

    .line 3506
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq p1, v0, :cond_b

    if-eq p2, v0, :cond_b

    if-ne p3, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private onExecutionComplete()V
    .registers 2

    .line 1456
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStartController;->onExecutionComplete(Lcom/android/server/wm/ActivityStarter;)V

    .line 1457
    return-void
.end method

.method private resolveToHeavyWeightSwitcherIfNeeded()I
    .registers 19

    .line 860
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_18a

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v1, :cond_18a

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1d

    goto/16 :goto_18a

    .line 866
    :cond_1d
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 868
    return v2

    .line 871
    :cond_32
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 872
    .local v1, "heavy":Lcom/android/server/wm/WindowProcessController;
    if-eqz v1, :cond_189

    iget-object v3, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v4, :cond_56

    iget-object v3, v1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 873
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    goto/16 :goto_189

    .line 877
    :cond_56
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 878
    .local v3, "appCallingUid":I
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_b7

    .line 879
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    .line 880
    .local v4, "callerApp":Lcom/android/server/wm/WindowProcessController;
    if-eqz v4, :cond_71

    .line 881
    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_b7

    .line 883
    :cond_71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find app for caller "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " (pid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") when starting: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 884
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 883
    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    invoke-static {v2}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 886
    const/16 v2, -0x5e

    return v2

    .line 890
    .end local v4    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_b7
    :goto_b7
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v6, 0x2

    const/4 v8, 0x0

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v10, v4, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x1

    new-array v14, v4, [Landroid/content/Intent;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    aput-object v7, v14, v2

    new-array v15, v4, [Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    aput-object v7, v15, v2

    const/high16 v16, 0x50000000

    const/16 v17, 0x0

    const-string v7, "android"

    move v9, v3

    invoke-virtual/range {v5 .. v17}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v5

    .line 898
    .local v5, "target":Landroid/content/IIntentSender;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 899
    .local v6, "newIntent":Landroid/content/Intent;
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    if-ltz v7, :cond_ee

    .line 901
    const-string v7, "has_result"

    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 903
    :cond_ee
    new-instance v7, Landroid/content/IntentSender;

    invoke-direct {v7, v5}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v8, "intent"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 904
    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowProcessController;->updateIntentForHeavyWeightActivity(Landroid/content/Intent;)V

    .line 905
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v8, "new_app"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 907
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 908
    const-class v7, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    .line 909
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 908
    const-string v8, "android"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 910
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object v6, v7, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 911
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 912
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object v8, v7, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 913
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    iput v9, v7, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 914
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    iput v9, v7, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 915
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean v4, v7, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 916
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v10, v4, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    const/4 v11, 0x0

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v12, v7, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    const/4 v13, 0x0

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iget-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v14, v14, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v15, v15, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 918
    invoke-static {v7, v14, v15}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v14

    .line 916
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iput-object v7, v4, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 920
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 921
    iget-object v7, v4, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v7, :cond_16c

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_16c
    iput-object v8, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 922
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_188

    .line 923
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v9, v9, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    invoke-virtual {v7, v8, v9}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    iput-object v7, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 927
    :cond_188
    return v2

    .line 874
    .end local v3    # "appCallingUid":I
    .end local v5    # "target":Landroid/content/IIntentSender;
    .end local v6    # "newIntent":Landroid/content/Intent;
    :cond_189
    :goto_189
    return v2

    .line 863
    .end local v1    # "heavy":Lcom/android/server/wm/WindowProcessController;
    :cond_18a
    :goto_18a
    return v2
.end method

.method private resumeTargetRootTaskIfNeeded()V
    .registers 7

    .line 3311
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_2c

    .line 3312
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3314
    .local v0, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_10

    .line 3315
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->setCurrentLaunchCanTurnScreenOn(Z)V

    .line 3317
    :cond_10
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isFocusable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 3318
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-boolean v5, p0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    goto :goto_2b

    .line 3321
    :cond_25
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 3323
    .end local v0    # "next":Lcom/android/server/wm/ActivityRecord;
    :goto_2b
    goto :goto_31

    .line 3324
    :cond_2c
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3326
    :goto_31
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/RootWindowContainer;->updateUserRootTask(ILcom/android/server/wm/Task;)V

    .line 3327
    return-void
.end method

.method private sendCanNotEmbedActivityError(Lcom/android/server/wm/TaskFragment;I)V
    .registers 11
    .param p1, "taskFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p2, "result"    # I

    .line 3419
    const-string v0, "Cannot embed "

    packed-switch p2, :pswitch_data_c2

    .line 3437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled embed result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "errMsg":Ljava/lang/String;
    goto/16 :goto_9e

    .line 3421
    .end local v0    # "errMsg":Ljava/lang/String;
    :pswitch_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " that launched on another task,mLaunchMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mLaunchFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 3423
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3424
    .restart local v0    # "errMsg":Ljava/lang/String;
    goto :goto_9e

    .line 3427
    .end local v0    # "errMsg":Ljava/lang/String;
    :pswitch_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". TaskFragment\'s bounds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3428
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minimum dimensions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3429
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getMinDimensions()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3430
    .restart local v0    # "errMsg":Ljava/lang/String;
    goto :goto_9e

    .line 3433
    .end local v0    # "errMsg":Ljava/lang/String;
    :pswitch_7c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The app:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not trusted to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3434
    .restart local v0    # "errMsg":Ljava/lang/String;
    nop

    .line 3439
    :goto_9e
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isOrganized()Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 3440
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 3441
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->errorCallbackToken:Landroid/os/IBinder;

    const/16 v6, 0x9

    new-instance v7, Ljava/lang/SecurityException;

    invoke-direct {v7, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 3440
    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    goto :goto_c1

    .line 3446
    :cond_bc
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3448
    :goto_c1
    return-void

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_7c
        :pswitch_4a
        :pswitch_1a
    .end packed-switch
.end method

.method private sendNewTaskResultRequestIfNeeded()V
    .registers 9

    .line 2943
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2c

    .line 2948
    const-string v0, "ActivityTaskManager"

    const-string v1, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v4, v0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 2952
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 2954
    :cond_2c
    return-void
.end method

.method private setInitialState(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;ZILcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)V
    .registers 30
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "inTask"    # Lcom/android/server/wm/Task;
    .param p4, "inTaskFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p5, "doResume"    # Z
    .param p6, "startFlags"    # I
    .param p7, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p8, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p9, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p10, "restrictedBgActivity"    # Z

    .line 2800
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move/from16 v12, p5

    move/from16 v13, p6

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    .line 2802
    iput-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2803
    iget-object v1, v10, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 2804
    move-object/from16 v15, p2

    iput-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2805
    iget v1, v10, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 2806
    move-object/from16 v9, p7

    iput-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2807
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2808
    move-object/from16 v7, p9

    iput-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 2809
    move/from16 v6, p10

    iput-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    .line 2811
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 2815
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v1

    iget-object v2, v10, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    const/16 v16, 0x0

    move-object/from16 v2, p3

    move-object/from16 v17, v4

    move-object/from16 v4, p1

    move-object/from16 v18, v5

    move-object/from16 v5, p7

    move-object/from16 v6, p2

    move-object/from16 v7, v18

    move/from16 v8, v16

    move-object/from16 v9, v17

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 2817
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredTaskDisplayArea()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 2818
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_69

    .line 2819
    :cond_63
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :goto_69
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2820
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 2822
    iget v1, v10, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 2824
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v2, v1, :cond_7b

    move v4, v3

    goto :goto_7c

    :cond_7b
    move v4, v14

    :goto_7c
    const/4 v5, 0x2

    if-ne v5, v1, :cond_81

    move v1, v3

    goto :goto_82

    :cond_81
    move v1, v14

    :goto_82
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 2826
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    .line 2824
    invoke-direct {v0, v10, v4, v1, v6}, Lcom/android/server/wm/ActivityStarter;->adjustLaunchFlagsToDocumentMode(Lcom/android/server/wm/ActivityRecord;ZZI)I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2827
    iget-boolean v1, v10, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    const/high16 v4, 0x80000

    if-eqz v1, :cond_a1

    .line 2828
    invoke-direct {v0, v5, v2}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v1

    if-nez v1, :cond_a1

    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_a1

    move v1, v3

    goto :goto_a2

    :cond_a1
    move v1, v14

    :goto_a2
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 2831
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v2, 0x4

    const/high16 v6, 0x10000000

    if-ne v1, v2, :cond_b0

    .line 2834
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v1, v6

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2837
    :cond_b0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->sendNewTaskResultRequestIfNeeded()V

    .line 2839
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_c1

    iget-object v1, v10, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_c1

    .line 2840
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v1, v6

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2845
    :cond_c1
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_d7

    .line 2846
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v1, :cond_d0

    iget-object v1, v10, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-ne v1, v5, :cond_d7

    .line 2848
    :cond_d0
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2854
    :cond_d7
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x40000

    and-int/2addr v2, v4

    if-nez v2, :cond_e2

    move v2, v3

    goto :goto_e3

    :cond_e2
    move v2, v14

    :goto_e3
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 2855
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_106

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivity() => mUserLeaving="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    :cond_106
    iput-boolean v12, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2862
    if-eqz v12, :cond_114

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result v1

    if-eqz v1, :cond_114

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_118

    .line 2863
    :cond_114
    iput-boolean v3, v10, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    .line 2864
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2867
    :cond_118
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v9, 0x0

    if-eqz v1, :cond_1a8

    .line 2868
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_15a

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getTaskOverlay()Z

    move-result v1

    if-eqz v1, :cond_15a

    .line 2869
    invoke-virtual {v10, v3}, Lcom/android/server/wm/ActivityRecord;->setTaskOverlay(Z)V

    .line 2870
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->canTaskOverlayResume()Z

    move-result v1

    if-nez v1, :cond_166

    .line 2871
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2872
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v4

    .line 2871
    invoke-virtual {v1, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2873
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_14a

    .line 2874
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    goto :goto_14b

    :cond_14a
    move-object v4, v9

    .line 2875
    .local v4, "top":Lcom/android/server/wm/ActivityRecord;
    :goto_14b
    if-eqz v4, :cond_159

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v5

    if-nez v5, :cond_159

    .line 2879
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2880
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 2882
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_159
    goto :goto_166

    .line 2883
    :cond_15a
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v1

    if-eqz v1, :cond_166

    .line 2884
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2885
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 2887
    :cond_166
    :goto_166
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getTransientLaunch()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    .line 2888
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2890
    if-nez p4, :cond_1a8

    .line 2891
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2892
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2891
    invoke-static {v1, v4}, Lcom/android/server/wm/TaskFragment;->fromTaskFragmentToken(Landroid/os/IBinder;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    .line 2893
    .end local p4    # "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    .local v1, "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    if-eqz v1, :cond_1aa

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v4

    if-eqz v4, :cond_1aa

    .line 2895
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not start activity in TaskFragment in PIP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    const/4 v1, 0x0

    goto :goto_1aa

    .line 2902
    .end local v1    # "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    .restart local p4    # "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    :cond_1a8
    move-object/from16 v1, p4

    .end local p4    # "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    .restart local v1    # "inTaskFragment":Lcom/android/server/wm/TaskFragment;
    :cond_1aa
    :goto_1aa
    iget v4, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x1000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1b4

    move-object/from16 v4, p7

    goto :goto_1b5

    :cond_1b4
    move-object v4, v9

    :goto_1b5
    iput-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 2904
    iput-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 2909
    if-eqz v11, :cond_1d7

    iget-boolean v4, v11, Lcom/android/server/wm/Task;->inRecents:Z

    if-nez v4, :cond_1d7

    .line 2910
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting activity in task not in recents: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    iput-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 2913
    :cond_1d7
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 2915
    iput v13, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 2919
    and-int/lit8 v2, v13, 0x1

    if-eqz v2, :cond_203

    .line 2920
    move-object/from16 v2, p7

    .line 2921
    .local v2, "checkedCaller":Lcom/android/server/wm/ActivityRecord;
    if-nez v2, :cond_1f1

    .line 2922
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 2923
    .local v4, "topFocusedRootTask":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_1f1

    .line 2924
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2927
    .end local v4    # "topFocusedRootTask":Lcom/android/server/wm/Task;
    :cond_1f1
    if-eqz v2, :cond_1fd

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v5, v10, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 2928
    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_203

    .line 2930
    :cond_1fd
    iget v4, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/lit8 v4, v4, -0x2

    iput v4, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 2934
    .end local v2    # "checkedCaller":Lcom/android/server/wm/ActivityRecord;
    :cond_203
    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x10000

    and-int/2addr v2, v4

    if-eqz v2, :cond_20c

    move v2, v3

    goto :goto_20d

    :cond_20c
    move v2, v14

    :goto_20d
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 2936
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    if-eqz v2, :cond_21f

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v2

    if-nez v2, :cond_21f

    .line 2937
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 2938
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2940
    :cond_21f
    return-void
.end method

.method private setNewTask(Lcom/android/server/wm/Task;)V
    .registers 14
    .param p1, "taskToAffiliate"    # Lcom/android/server/wm/Task;

    .line 3330
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v0, :cond_c

    move v8, v1

    goto :goto_d

    :cond_c
    move v8, v2

    .line 3331
    .local v8, "toTop":Z
    :goto_d
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 3332
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_14

    goto :goto_18

    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    :goto_18
    move-object v4, v0

    .line 3333
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1e

    goto :goto_20

    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    :goto_20
    move-object v5, v0

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v10, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v11, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 3331
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/wm/Task;->reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3335
    .local v0, "task":Lcom/android/server/wm/Task;
    iget-object v3, v0, Lcom/android/server/wm/Task;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/TransitionController;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    .line 3336
    const-string/jumbo v3, "setTaskFromReuseOrCreateNewTask"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    .line 3338
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam1":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x4dc5c469

    const/4 v7, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v2

    aput-object v4, v9, v1

    invoke-static {v5, v6, v2, v7, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3341
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam1":Ljava/lang/String;
    :cond_5e
    if-eqz p1, :cond_65

    .line 3342
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V

    .line 3344
    :cond_65
    return-void
.end method

.method private setTargetRootTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 28
    .param p1, "intentActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 3176
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    .line 3177
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 3179
    .local v1, "intentTask":Lcom/android/server/wm/Task;
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v15, 0x0

    if-nez v2, :cond_34

    .line 3181
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_27

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    if-eqz v2, :cond_27

    .line 3184
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    invoke-static {v2}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    goto :goto_50

    .line 3186
    :cond_27
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    goto :goto_50

    .line 3195
    :cond_34
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 3196
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_46

    :cond_45
    move-object v2, v15

    .line 3197
    .local v2, "adjacentTargetTask":Lcom/android/server/wm/Task;
    :goto_46
    if-eqz v2, :cond_50

    invoke-virtual {v7, v2}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 3198
    iput-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 3207
    .end local v2    # "adjacentTargetTask":Lcom/android/server/wm/Task;
    :cond_50
    :goto_50
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    const/4 v4, 0x1

    const/4 v14, 0x0

    if-ne v2, v3, :cond_88

    .line 3208
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v2, v2, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 3209
    .local v2, "focusRootTask":Lcom/android/server/wm/Task;
    if-nez v2, :cond_68

    .line 3210
    move-object v3, v15

    goto :goto_6e

    :cond_68
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 3211
    .local v3, "curTop":Lcom/android/server/wm/ActivityRecord;
    :goto_6e
    if-eqz v3, :cond_75

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    goto :goto_76

    :cond_75
    move-object v5, v15

    .line 3212
    .local v5, "topTask":Lcom/android/server/wm/Task;
    :goto_76
    if-ne v5, v1, :cond_83

    if-eqz v2, :cond_81

    .line 3213
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-eq v5, v6, :cond_81

    goto :goto_83

    :cond_81
    move v6, v14

    goto :goto_84

    :cond_83
    :goto_83
    move v6, v4

    :goto_84
    move v2, v6

    .line 3214
    .end local v3    # "curTop":Lcom/android/server/wm/ActivityRecord;
    .end local v5    # "topTask":Lcom/android/server/wm/Task;
    .local v2, "differentTopTask":Z
    move/from16 v16, v2

    goto :goto_8b

    .line 3216
    .end local v2    # "differentTopTask":Z
    :cond_88
    const/4 v2, 0x1

    move/from16 v16, v2

    .line 3223
    .local v16, "differentTopTask":Z
    :goto_8b
    const/4 v2, 0x2

    if-nez v16, :cond_bd

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v3, :cond_bd

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-boolean v3, v3, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v3, :cond_bd

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 3225
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    const/4 v5, 0x6

    if-ne v3, v5, :cond_bd

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 3226
    invoke-virtual {v7, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v3

    if-eqz v3, :cond_bd

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v3, :cond_bd

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 3227
    invoke-virtual {v7, v3}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-nez v3, :cond_bd

    .line 3228
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v3

    if-eq v3, v2, :cond_bd

    move v3, v4

    goto :goto_be

    :cond_bd
    move v3, v14

    :goto_be
    move/from16 v17, v3

    .line 3229
    .local v17, "toFrontForSplitScreen":Z
    if-eqz v16, :cond_c6

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    if-eqz v3, :cond_c8

    :cond_c6
    if-eqz v17, :cond_193

    .line 3231
    :cond_c8
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v5, 0x400000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3232
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_df

    invoke-direct {v0, v3}, Lcom/android/server/wm/ActivityStarter;->inTopNonFinishingTask(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_dc

    goto :goto_df

    :cond_dc
    move v3, v14

    goto/16 :goto_194

    .line 3234
    :cond_df
    :goto_df
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_ee

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_ee

    .line 3235
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/android/server/wm/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V

    .line 3238
    :cond_ee
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v18

    .line 3239
    .local v18, "targetDisplayId":I
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v7, v3}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_16e

    .line 3242
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-eq v2, v1, :cond_122

    .line 3243
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eq v2, v3, :cond_122

    .line 3244
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    const v3, 0x7fffffff

    invoke-virtual {v2, v3, v1, v14}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3246
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    move-object v8, v1

    goto :goto_123

    .line 3251
    :cond_122
    move-object v8, v1

    .end local v1    # "intentTask":Lcom/android/server/wm/Task;
    .local v8, "intentTask":Lcom/android/server/wm/Task;
    :goto_123
    iget-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v1, :cond_137

    .line 3252
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_137

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 3253
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-ne v7, v1, :cond_137

    move v1, v4

    goto :goto_138

    :cond_137
    move v1, v14

    :goto_138
    move v9, v1

    .line 3259
    .local v9, "wasTopOfVisibleRootTask":Z
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const/16 v24, 0x1

    const-string v25, "bringingFoundTaskToFront"

    move-object/from16 v19, v1

    move-object/from16 v20, v8

    move/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v5

    invoke-virtual/range {v19 .. v25}, Lcom/android/server/wm/Task;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V

    .line 3262
    if-nez v9, :cond_157

    goto :goto_158

    :cond_157
    move v4, v14

    :goto_158
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 3264
    invoke-static {}, Lcom/android/server/wm/PreloadStateManagerStub;->get()Lcom/android/server/wm/PreloadStateManagerStub;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-boolean v5, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move/from16 v2, v18

    move-object/from16 v4, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/server/wm/PreloadStateManagerStub;->onMoveStackToDefaultDisplay(ILcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ZLandroid/app/ActivityOptions;)V

    .line 3267
    .end local v9    # "wasTopOfVisibleRootTask":Z
    move-object v1, v8

    move v3, v14

    goto :goto_187

    .end local v8    # "intentTask":Lcom/android/server/wm/Task;
    .restart local v1    # "intentTask":Lcom/android/server/wm/Task;
    :cond_16e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v3

    if-eq v3, v2, :cond_186

    .line 3272
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const-string/jumbo v2, "reparentToTargetRootTask"

    move-object v8, v1

    move v3, v14

    move-object v14, v2

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)Z

    .line 3274
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    goto :goto_187

    .line 3267
    :cond_186
    move v3, v14

    .line 3277
    :goto_187
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-interface {v2, v4}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->avoidedByOthersIfNeeded(Lcom/android/server/wm/Task;)V

    .line 3278
    iput-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    goto :goto_194

    .line 3229
    .end local v18    # "targetDisplayId":I
    :cond_193
    move v3, v14

    .line 3283
    :goto_194
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    if-eqz v2, :cond_1a0

    .line 3284
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    iput-object v2, v7, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    .line 3287
    :cond_1a0
    invoke-static {}, Lcom/android/server/wm/PreloadStateManagerStub;->get()Lcom/android/server/wm/PreloadStateManagerStub;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-boolean v5, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-interface {v2, v4, v7, v5, v6}, Lcom/android/server/wm/PreloadStateManagerStub;->reparentPreloadStack(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ZLandroid/app/ActivityOptions;)V

    .line 3291
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 3292
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 3293
    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 3292
    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;)V

    .line 3294
    return-void
.end method

.method private startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;ZLcom/android/server/uri/NeededUriGrants;)I
    .registers 26
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/app/ActivityOptions;
    .param p8, "inTask"    # Lcom/android/server/wm/Task;
    .param p9, "inTaskFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p10, "restrictedBgActivity"    # Z
    .param p11, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 1837
    move-object v7, p0

    move-object v8, p1

    const/16 v9, -0x60

    .line 1841
    .local v9, "result":I
    iget-object v0, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_32

    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_32

    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1842
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1843
    iget-object v0, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1844
    .local v0, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const-string v2, "exitCastMode"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 1845
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->resumeCastActivity()V

    .line 1853
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_32
    iget-object v10, v8, Lcom/android/server/wm/ActivityRecord;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 1854
    .local v10, "transitionController":Lcom/android/server/wm/TransitionController;
    invoke-virtual {v10}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_46

    .line 1855
    invoke-virtual {v10}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 1856
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lcom/android/server/wm/TransitionController;->createTransition(I)Lcom/android/server/wm/Transition;

    move-result-object v0

    goto :goto_47

    :cond_46
    const/4 v0, 0x0

    :goto_47
    move-object v11, v0

    .line 1857
    .local v11, "newTransition":Lcom/android/server/wm/Transition;
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->takeRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v12

    .line 1858
    .local v12, "remoteTransition":Landroid/window/RemoteTransition;
    if-eqz v11, :cond_53

    if-eqz v12, :cond_53

    .line 1859
    invoke-virtual {v11, v12}, Lcom/android/server/wm/Transition;->setRemoteTransition(Landroid/window/RemoteTransition;)V

    .line 1861
    :cond_53
    invoke-virtual {v10, p1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1864
    const-wide/16 v1, 0x20

    :try_start_58
    invoke-static {}, Lcom/android/server/wm/ActivityStarterStub;->get()Lcom/android/server/wm/ActivityStarterStub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarterStub;->startActivityUncheckedBefore(Lcom/android/server/wm/ActivityRecord;)V

    .line 1866
    iget-object v0, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 1867
    const-string/jumbo v0, "startActivityInner"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1868
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/wm/ActivityStarter;->startActivityInner(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;ZLcom/android/server/uri/NeededUriGrants;)I

    move-result v0
    :try_end_6e
    .catchall {:try_start_58 .. :try_end_6e} :catchall_91

    .line 1872
    .end local v9    # "result":I
    .local v0, "result":I
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1873
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p7

    move v4, v0

    move-object v5, v11

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/ActivityStarter;->handleStartResult(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/Transition;Landroid/window/RemoteTransition;)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1875
    .local v1, "startedActivityRootTask":Lcom/android/server/wm/Task;
    iget-object v2, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1876
    nop

    .line 1879
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v2

    iget v3, v7, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    move-object/from16 v13, p7

    invoke-virtual {v2, v13, v3, v1}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->splitTaskIfNeed(Landroid/app/ActivityOptions;ILcom/android/server/wm/Task;)V

    .line 1882
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;)V

    .line 1884
    return v0

    .line 1872
    .end local v0    # "result":I
    .end local v1    # "startedActivityRootTask":Lcom/android/server/wm/Task;
    .restart local v9    # "result":I
    :catchall_91
    move-exception v0

    move-object/from16 v13, p7

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1873
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p7

    move v4, v9

    move-object v5, v11

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/ActivityStarter;->handleStartResult(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/Transition;Landroid/window/RemoteTransition;)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1875
    .restart local v1    # "startedActivityRootTask":Lcom/android/server/wm/Task;
    iget-object v2, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1876
    throw v0
.end method

.method private waitResultIfNeeded(Landroid/app/WaitResult;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)I
    .registers 7
    .param p1, "waitResult"    # Landroid/app/WaitResult;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "launchingState"    # Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 935
    iget v0, p1, Landroid/app/WaitResult;->result:I

    .line 936
    .local v0, "res":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    iget-boolean v2, p2, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_15

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 937
    invoke-virtual {p2, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_22

    .line 944
    :cond_15
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->waitActivityVisibleOrLaunched(Landroid/app/WaitResult;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)V

    .line 945
    if-nez v0, :cond_21

    iget v2, p1, Landroid/app/WaitResult;->result:I

    if-ne v2, v1, :cond_21

    .line 947
    return v1

    .line 949
    :cond_21
    return v0

    .line 939
    :cond_22
    :goto_22
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/app/WaitResult;->timeout:Z

    .line 940
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v1, p1, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 941
    const-wide/16 v1, 0x0

    iput-wide v1, p1, Landroid/app/WaitResult;->totalTime:J

    .line 942
    return v0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 3720
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3721
    const-string v0, "mCurrentUser="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3722
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3723
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3724
    const-string v0, "mLastStartReason="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3725
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3726
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3727
    const-string v0, "mLastStartActivityTimeMs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3728
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3729
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3730
    const-string v0, "mLastStartActivityResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3731
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3732
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-string v1, "  "

    const/4 v2, 0x1

    if-eqz v0, :cond_68

    .line 3733
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3734
    const-string v0, "mLastStartActivityRecord:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3735
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3, v2}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3737
    :cond_68
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_8b

    .line 3738
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3739
    const-string/jumbo v0, "mStartActivity:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3740
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3742
    :cond_8b
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_9c

    .line 3743
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3744
    const-string v0, "mIntent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3745
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3747
    :cond_9c
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_ae

    .line 3748
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3749
    const-string/jumbo v0, "mOptions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3750
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3752
    :cond_ae
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3753
    const-string v0, "mLaunchSingleTop="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3754
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v1, 0x0

    if-ne v2, v0, :cond_bd

    move v0, v2

    goto :goto_be

    :cond_bd
    move v0, v1

    :goto_be
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3755
    const-string v0, " mLaunchSingleInstance="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3756
    const/4 v0, 0x3

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v0, v3, :cond_cd

    move v0, v2

    goto :goto_ce

    :cond_cd
    move v0, v1

    :goto_ce
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3757
    const-string v0, " mLaunchSingleTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3758
    const/4 v0, 0x2

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v0, v3, :cond_dc

    goto :goto_dd

    :cond_dc
    move v2, v1

    :goto_dd
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3759
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3760
    const-string v0, "mLaunchFlags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3761
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3762
    const-string v0, " mDoResume="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3763
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3764
    const-string v0, " mAddingToTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3765
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3766
    const-string v0, " mInTaskFragment="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3767
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3768
    return-void
.end method

.method execute()I
    .registers 15

    .line 744
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_19

    .line 745
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File descriptors passed in Intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    throw v0

    .line 749
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_197

    :try_start_1e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 750
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 751
    .local v1, "caller":Lcom/android/server/wm/ActivityRecord;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_35

    .line 752
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    goto :goto_39

    :cond_35
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 753
    .local v2, "callingUid":I
    :goto_39
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object v3

    move-object v1, v3

    .line 755
    .end local v2    # "callingUid":I
    .local v1, "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_1e .. :try_end_49} :catchall_191

    :try_start_49
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 761
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_61

    .line 764
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter$Request;->resolveActivity(Lcom/android/server/wm/ActivityTaskSupervisor;)I

    move-result v0
    :try_end_5a
    .catchall {:try_start_49 .. :try_end_5a} :catchall_197

    .line 765
    .local v0, "error":I
    if-eqz v0, :cond_61

    .line 766
    nop

    .line 851
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 766
    return v0

    .line 773
    .end local v0    # "error":I
    :cond_61
    :try_start_61
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_b5

    .line 774
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 775
    .local v0, "intentAction":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 776
    .local v2, "callingPackage":Ljava/lang/String;
    if-eqz v0, :cond_aa

    if-eqz v2, :cond_aa

    const-string v3, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    .line 777
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8f

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    .line 778
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8f

    const-string v3, "android.intent.action.REBOOT"

    .line 779
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 782
    :cond_8f
    const/4 v3, 0x0

    .line 783
    .local v3, "reason":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/ActivityStarterStub;->get()Lcom/android/server/wm/ActivityStarterStub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStarterStub;->shouldRebootReasonCheckNull()Z

    move-result v4

    if-eqz v4, :cond_a7

    .line 784
    invoke-static {}, Lcom/android/server/wm/ActivityStarterStub;->get()Lcom/android/server/wm/ActivityStarterStub;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStarterStub;->getRebootReason(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 786
    :cond_a7
    invoke-static {v0, v2, v3}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    .end local v3    # "reason":Ljava/lang/String;
    :cond_aa
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceStub;->get()Lcom/android/server/am/ActivityManagerServiceStub;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerServiceStub;->boostCameraByThreshold(Landroid/content/Intent;)V

    .line 795
    .end local v0    # "intentAction":Ljava/lang/String;
    .end local v2    # "callingPackage":Ljava/lang/String;
    :cond_b5
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_ba
    .catchall {:try_start_61 .. :try_end_ba} :catchall_197

    :try_start_ba
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 796
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_d7

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 797
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v5}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_d7

    move v2, v3

    goto :goto_d8

    :cond_d7
    move v2, v4

    .line 798
    .local v2, "globalConfigWillChange":Z
    :goto_d8
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    move-object v10, v5

    .line 799
    .local v10, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v10, :cond_e3

    .line 800
    iput-boolean v2, v10, Lcom/android/server/wm/Task;->mConfigWillChange:Z

    .line 802
    :cond_e3
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_fa

    move v5, v2

    .local v5, "protoLogParam0":Z
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x58fb9093

    const/4 v9, 0x3

    new-array v11, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-static {v7, v8, v9, v6, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 805
    .end local v5    # "protoLogParam0":Z
    :cond_fa
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    move-wide v11, v7

    .line 807
    .local v11, "origId":J
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->resolveToHeavyWeightSwitcherIfNeeded()I

    move-result v5

    .line 808
    .local v5, "res":I
    if-eqz v5, :cond_10d

    .line 809
    monitor-exit v0
    :try_end_106
    .catchall {:try_start_ba .. :try_end_106} :catchall_18b

    .line 851
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 809
    return v5

    .line 811
    :cond_10d
    :try_start_10d
    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-direct {p0, v7}, Lcom/android/server/wm/ActivityStarter;->executeRequest(Lcom/android/server/wm/ActivityStarter$Request;)I

    move-result v7

    move v13, v7

    .line 813
    .end local v5    # "res":I
    .local v13, "res":I
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 815
    if-eqz v2, :cond_141

    .line 820
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v7, "android.permission.CHANGE_CONFIGURATION"

    const-string/jumbo v8, "updateConfiguration()"

    invoke-virtual {v5, v7, v8}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    if-eqz v10, :cond_129

    .line 824
    iput-boolean v4, v10, Lcom/android/server/wm/Task;->mConfigWillChange:Z

    .line 826
    :cond_129
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v5, :cond_138

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x6f5827a0

    move-object v8, v6

    check-cast v8, [Ljava/lang/Object;

    invoke-static {v5, v7, v4, v6, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 829
    :cond_138
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v5, v7, v6, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 834
    :cond_141
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    if-eqz v5, :cond_151

    .line 835
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    invoke-virtual {v5}, Lcom/android/server/wm/SafeActivityOptions;->getOriginalOptions()Landroid/app/ActivityOptions;

    move-result-object v5

    move-object v9, v5

    goto :goto_152

    :cond_151
    move-object v9, v6

    .line 837
    .local v9, "originalOptions":Landroid/app/ActivityOptions;
    :goto_152
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v5, v6, :cond_15a

    move v7, v3

    goto :goto_15b

    :cond_15a
    move v7, v4

    .line 841
    .local v7, "newActivityCreated":Z
    :goto_15b
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v4

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    move-object v5, v1

    move v6, v13

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 843
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    if-eqz v3, :cond_17f

    .line 844
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iput v13, v3, Landroid/app/WaitResult;->result:I

    .line 845
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {p0, v3, v4, v1}, Lcom/android/server/wm/ActivityStarter;->waitResultIfNeeded(Landroid/app/WaitResult;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)I

    move-result v3

    move v13, v3

    .line 848
    :cond_17f
    invoke-static {v13}, Lcom/android/server/wm/ActivityStarter;->getExternalResult(I)I

    move-result v3

    monitor-exit v0
    :try_end_184
    .catchall {:try_start_10d .. :try_end_184} :catchall_18b

    .line 851
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 848
    return v3

    .line 849
    .end local v2    # "globalConfigWillChange":Z
    .end local v7    # "newActivityCreated":Z
    .end local v9    # "originalOptions":Landroid/app/ActivityOptions;
    .end local v10    # "rootTask":Lcom/android/server/wm/Task;
    .end local v11    # "origId":J
    .end local v13    # "res":I
    :catchall_18b
    move-exception v2

    :try_start_18c
    monitor-exit v0
    :try_end_18d
    .catchall {:try_start_18c .. :try_end_18d} :catchall_18b

    :try_start_18d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    throw v2
    :try_end_191
    .catchall {:try_start_18d .. :try_end_191} :catchall_197

    .line 755
    .end local v1    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    :catchall_191
    move-exception v1

    :try_start_192
    monitor-exit v0
    :try_end_193
    .catchall {:try_start_192 .. :try_end_193} :catchall_191

    :try_start_193
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    throw v1
    :try_end_197
    .catchall {:try_start_193 .. :try_end_197} :catchall_197

    .line 851
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStarter;
    :catchall_197
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 852
    throw v0
.end method

.method getIntent()Landroid/content/Intent;
    .registers 2

    .line 3520
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method isAllowedToStart(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/Task;)I
    .registers 14
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "targetTask"    # Lcom/android/server/wm/Task;

    .line 2332
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 2333
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2334
    const/16 v0, -0x5c

    return v0

    .line 2340
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "ActivityTaskManager"

    if-eqz v0, :cond_3c

    .line 2341
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 2343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot launch home on display area "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    const/16 v0, -0x60

    return v0

    .line 2351
    :cond_3c
    const/4 v0, 0x0

    if-nez p2, :cond_55

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 2352
    invoke-virtual {p3, v3}, Lcom/android/server/wm/Task;->isUidPresent(I)Z

    move-result v3

    if-eqz v3, :cond_55

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v3, v4, :cond_53

    .line 2353
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_53

    goto :goto_55

    :cond_53
    move v3, v0

    goto :goto_56

    :cond_55
    :goto_55
    move v3, v1

    .line 2355
    .local v3, "blockBalInTask":Z
    :goto_56
    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    const/16 v5, 0x66

    if-eqz v4, :cond_7d

    if-eqz v3, :cond_7d

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStarter;->handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 2356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Abort background activity starts from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    return v5

    .line 2363
    :cond_7d
    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v6, 0x10008000

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_86

    goto :goto_87

    :cond_86
    move v1, v0

    .line 2366
    .local v1, "isNewClearTask":Z
    :goto_87
    const/16 v4, 0x65

    const-string v6, "Attempted Lock Task Mode violation r="

    if-nez p2, :cond_ae

    .line 2367
    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v7

    invoke-virtual {v7, p3, v1}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z

    move-result v7

    if-eqz v7, :cond_cf

    .line 2369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    return v4

    .line 2373
    :cond_ae
    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/android/server/wm/LockTaskController;->isNewTaskLockTaskModeViolation(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v7

    if-eqz v7, :cond_cf

    .line 2374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    return v4

    .line 2383
    :cond_cf
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v4, :cond_12f

    .line 2384
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2385
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v4

    .line 2384
    invoke-virtual {v6, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 2386
    .local v4, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v4, :cond_12f

    iget-object v6, v4, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->hasController()Z

    move-result v6

    if-eqz v6, :cond_12f

    .line 2387
    if-eqz p3, :cond_ee

    .line 2388
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v6

    goto :goto_f2

    :cond_ee
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v6

    .line 2390
    .local v6, "targetWindowingMode":I
    :goto_f2
    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_fb

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v7

    goto :goto_fc

    :cond_fb
    move v7, v0

    .line 2391
    .local v7, "launchingFromDisplayId":I
    :goto_fc
    iget-object v8, v4, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    iget-object v9, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 2392
    invoke-virtual {v8, v9, v6, v7, p2}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->canActivityBeLaunched(Landroid/content/pm/ActivityInfo;IIZ)Z

    move-result v8

    if-nez v8, :cond_12f

    .line 2394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Abort to launch "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " on display area "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    return v5

    .line 2401
    .end local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "targetWindowingMode":I
    .end local v7    # "launchingFromDisplayId":I
    :cond_12f
    return v0
.end method

.method synthetic lambda$startActivityInner$0$com-android-server-wm-ActivityStarter([ILcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/Task;)Z
    .registers 6
    .param p1, "result"    # [I
    .param p2, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;
    .param p3, "t"    # Lcom/android/server/wm/Task;

    .line 2132
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2133
    invoke-direct {p0, p3, p2}, Lcom/android/server/wm/ActivityStarter;->deliverToCurrentTopIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)I

    move-result v0

    aput v0, p1, v1

    .line 2134
    aget v0, p1, v1

    if-eqz v0, :cond_19

    .line 2135
    const/4 v0, 0x1

    return v0

    .line 2138
    :cond_19
    return v1
.end method

.method postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;)V
    .registers 12
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "result"    # I
    .param p3, "startedActivityRootTask"    # Lcom/android/server/wm/Task;

    .line 1766
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1767
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    if-eqz v0, :cond_11

    .line 1771
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->resetFreezeTaskListReorderingOnTimeout()V

    .line 1774
    :cond_11
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultFatalError(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1775
    return-void

    .line 1783
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->reportWaitingActivityLaunchedIfNeeded(Lcom/android/server/wm/ActivityRecord;I)V

    .line 1785
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 1786
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_2a

    .line 1787
    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    :goto_2a
    nop

    .line 1788
    .local v0, "targetTask":Lcom/android/server/wm/Task;
    if-eqz p3, :cond_7f

    if-eqz v0, :cond_7f

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v1

    if-nez v1, :cond_36

    goto :goto_7f

    .line 1792
    :cond_36
    const/4 v1, 0x2

    if-eq p2, v1, :cond_3c

    const/4 v1, 0x3

    if-ne p2, v1, :cond_6f

    .line 1796
    :cond_3c
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1797
    .local v1, "rootHomeTask":Lcom/android/server/wm/Task;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_51

    const/4 v4, 0x0

    .line 1798
    invoke-virtual {v1, v4}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_51

    move v4, v2

    goto :goto_52

    :cond_51
    move v4, v3

    .line 1799
    .local v4, "homeTaskVisible":Z
    :goto_52
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 1800
    .local v5, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_5f

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_5f

    goto :goto_60

    :cond_5f
    move v2, v3

    .line 1801
    .local v2, "visible":Z
    :goto_60
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v3

    .line 1802
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    .line 1801
    invoke-virtual {v3, v6, v4, v7, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V

    .line 1805
    .end local v1    # "rootHomeTask":Lcom/android/server/wm/Task;
    .end local v2    # "visible":Z
    .end local v4    # "homeTaskVisible":Z
    .end local v5    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_6f
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 1806
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/ActivityStartInterceptor;->onActivityLaunched(Landroid/app/TaskInfo;Lcom/android/server/wm/ActivityRecord;)V

    .line 1808
    :cond_7e
    return-void

    .line 1789
    :cond_7f
    :goto_7f
    return-void
.end method

.method recycleTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)I
    .registers 14
    .param p1, "targetTask"    # Lcom/android/server/wm/Task;
    .param p2, "targetTaskTop"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "reusedTask"    # Lcom/android/server/wm/Task;
    .param p4, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 2436
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_13

    .line 2437
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2438
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2439
    return v2

    .line 2442
    :cond_13
    if-eqz p3, :cond_3c

    .line 2443
    iget-object v0, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v0, :cond_1f

    .line 2447
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_3c

    .line 2449
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2450
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2e

    move v0, v3

    goto :goto_2f

    :cond_2e
    move v0, v2

    .line 2451
    .local v0, "taskOnHome":Z
    :goto_2f
    if-eqz v0, :cond_37

    .line 2452
    iget-object v4, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_3c

    .line 2454
    :cond_37
    iget-object v4, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v1}, Landroid/content/Intent;->removeFlags(I)V

    .line 2459
    .end local v0    # "taskOnHome":Z
    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v2, p2}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 2462
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityStarter;->setTargetRootTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 2466
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_54

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_52

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-eqz v0, :cond_54

    .line 2468
    :cond_52
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2471
    :cond_54
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/2addr v0, v3

    const/4 v1, 0x2

    const-string v4, "intentActivityFound"

    const/4 v5, 0x0

    if-eqz v0, :cond_8a

    .line 2475
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-nez v0, :cond_86

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_86

    .line 2476
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam1":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x5e7ded20

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    aput-object v6, v1, v3

    invoke-static {v7, v8, v2, v5, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2478
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v6    # "protoLogParam1":Ljava/lang/String;
    :cond_81
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 2480
    :cond_86
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->resumeTargetRootTaskIfNeeded()V

    .line 2481
    return v3

    .line 2484
    :cond_8a
    nop

    .line 2485
    if-eqz p3, :cond_91

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 2484
    :cond_91
    invoke-direct {p0, p1, v5, p4}, Lcom/android/server/wm/ActivityStarter;->complyActivityFlags(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 2488
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->isSameIntentFilter(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 2489
    invoke-static {}, Lcom/android/server/wm/ActivityStarterStub;->get()Lcom/android/server/wm/ActivityStarterStub;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityStarterStub;->isAppLockActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 2490
    invoke-static {}, Lcom/android/server/wm/ActivityStarterStub;->get()Lcom/android/server/wm/ActivityStarterStub;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityStarterStub;->isAppLockActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_b4

    move v0, v3

    goto :goto_b5

    :cond_b4
    move v0, v2

    .line 2496
    .local v0, "isSameAppLock":Z
    :goto_b5
    iget-boolean v5, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-eqz v5, :cond_bc

    if-nez v0, :cond_bc

    .line 2497
    return v2

    .line 2504
    :cond_bc
    iget-boolean v2, p2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_c5

    .line 2505
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_c6

    .line 2506
    :cond_c5
    move-object v2, p2

    :goto_c6
    move-object p2, v2

    .line 2510
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v2

    if-eqz v2, :cond_dd

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isDreaming()Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 2511
    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string/jumbo v5, "recycleTask#turnScreenOnFlag"

    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->wakeUp(Ljava/lang/String;)V

    .line 2514
    :cond_dd
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-eqz v2, :cond_e5

    .line 2516
    invoke-virtual {p2, v3}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    goto :goto_ee

    .line 2517
    :cond_e5
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v2, :cond_ee

    .line 2519
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 2523
    :cond_ee
    :goto_ee
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->resumeTargetRootTaskIfNeeded()V

    .line 2525
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2526
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-eqz v2, :cond_f8

    goto :goto_f9

    :cond_f8
    const/4 v1, 0x3

    :goto_f9
    return v1
.end method

.method relatedToPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 731
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 732
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1a

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 733
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 731
    :goto_1b
    return v0
.end method

.method reset(Z)V
    .registers 5
    .param p1, "clearRequest"    # Z

    .line 2749
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2750
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 2751
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 2752
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2753
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    .line 2755
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 2756
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2757
    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 2759
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 2761
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 2762
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2763
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 2764
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2765
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2766
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 2768
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 2769
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 2770
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 2771
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2773
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 2774
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 2775
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    .line 2777
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2778
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 2779
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    .line 2780
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 2781
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 2782
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 2783
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 2784
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    .line 2786
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2787
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 2789
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 2791
    if-eqz p1, :cond_4f

    .line 2792
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter$Request;->reset()V

    .line 2794
    :cond_4f
    return-void
.end method

.method set(Lcom/android/server/wm/ActivityStarter;)V
    .registers 4
    .param p1, "starter"    # Lcom/android/server/wm/ActivityStarter;

    .line 684
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 685
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 686
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 687
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 688
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    .line 690
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 691
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 692
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 694
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v1, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 696
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 697
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 698
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 699
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 700
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 701
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 703
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 704
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 705
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 707
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 708
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 709
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    .line 711
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 712
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 713
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    .line 714
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 715
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 716
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 717
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 719
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 720
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 722
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 723
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    .line 724
    iget-wide v0, p1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    iput-wide v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 725
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 727
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, p1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter$Request;->set(Lcom/android/server/wm/ActivityStarter$Request;)V

    .line 728
    return-void
.end method

.method setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 3544
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3545
    return-object p0
.end method

.method setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "bOptions"    # Landroid/os/Bundle;

    .line 3646
    invoke-static {p1}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    return-object v0
.end method

.method setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "options"    # Lcom/android/server/wm/SafeActivityOptions;

    .line 3641
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 3642
    return-object p0
.end method

.method setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "allowBackgroundActivityStart"    # Z

    .line 3710
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->allowBackgroundActivityStart:Z

    .line 3711
    return-object p0
.end method

.method setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "allowLookup"    # Z

    .line 3700
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 3701
    return-object p0
.end method

.method setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "caller"    # Landroid/app/IApplicationThread;

    .line 3534
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 3535
    return-object p0
.end method

.method setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "callingFeatureId"    # Ljava/lang/String;

    .line 3607
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 3608
    return-object p0
.end method

.method setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 3602
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 3603
    return-object p0
.end method

.method setCallingPid(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "pid"    # I

    .line 3587
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 3588
    return-object p0
.end method

.method setCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "uid"    # I

    .line 3597
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 3598
    return-object p0
.end method

.method setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "componentSpecified"    # Z

    .line 3660
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 3661
    return-object p0
.end method

.method setErrorCallbackToken(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "errorCallbackToken"    # Landroid/os/IBinder;

    .line 3715
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->errorCallbackToken:Landroid/os/IBinder;

    .line 3716
    return-object p0
.end method

.method setFilterCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "filterCallingUid"    # I

    .line 3655
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 3656
    return-object p0
.end method

.method setGlobalConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 3690
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 3691
    return-object p0
.end method

.method setIgnoreTargetSecurity(Z)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "ignoreTargetSecurity"    # Z

    .line 3650
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 3651
    return-object p0
.end method

.method setInTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "inTask"    # Lcom/android/server/wm/Task;

    .line 3670
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    .line 3671
    return-object p0
.end method

.method setInTaskFragment(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "taskFragment"    # Lcom/android/server/wm/TaskFragment;

    .line 3675
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->inTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 3676
    return-object p0
.end method

.method setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 3515
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 3516
    return-object p0
.end method

.method setIntentGrants(Lcom/android/server/uri/NeededUriGrants;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 3524
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 3525
    return-object p0
.end method

.method setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;

    .line 3705
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 3706
    return-object p0
.end method

.method setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "outActivity"    # [Lcom/android/server/wm/ActivityRecord;

    .line 3665
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    .line 3666
    return-object p0
.end method

.method setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "info"    # Landroid/app/ProfilerInfo;

    .line 3685
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 3686
    return-object p0
.end method

.method setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "pid"    # I

    .line 3621
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 3622
    return-object p0
.end method

.method setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "uid"    # I

    .line 3631
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 3632
    return-object p0
.end method

.method setReason(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 3529
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 3530
    return-object p0
.end method

.method setRequestCode(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "requestCode"    # I

    .line 3574
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 3575
    return-object p0
.end method

.method setResolveInfo(Landroid/content/pm/ResolveInfo;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .line 3549
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 3550
    return-object p0
.end method

.method setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 3539
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 3540
    return-object p0
.end method

.method setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "resultTo"    # Landroid/os/IBinder;

    .line 3564
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 3565
    return-object p0
.end method

.method setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "resultWho"    # Ljava/lang/String;

    .line 3569
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 3570
    return-object p0
.end method

.method setStartFlags(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "startFlags"    # I

    .line 3636
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 3637
    return-object p0
.end method

.method setUserId(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "userId"    # I

    .line 3695
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 3696
    return-object p0
.end method

.method setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 3559
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 3560
    return-object p0
.end method

.method setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 3554
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 3555
    return-object p0
.end method

.method setWaitResult(Landroid/app/WaitResult;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "result"    # Landroid/app/WaitResult;

    .line 3680
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 3681
    return-object p0
.end method

.method shouldAbortBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLandroid/content/Intent;Landroid/app/ActivityOptions;)Z
    .registers 46
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "realCallingUid"    # I
    .param p5, "realCallingPid"    # I
    .param p6, "callerApp"    # Lcom/android/server/wm/WindowProcessController;
    .param p7, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;
    .param p8, "allowBackgroundActivityStart"    # Z
    .param p9, "intent"    # Landroid/content/Intent;
    .param p10, "checkedOptions"    # Landroid/app/ActivityOptions;

    .line 1478
    move-object/from16 v0, p0

    move/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v11, p7

    move/from16 v10, p8

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    .line 1479
    .local v9, "callingAppId":I
    const/4 v8, 0x1

    const/4 v1, 0x0

    if-eqz v11, :cond_21

    if-eqz p10, :cond_21

    .line 1481
    invoke-virtual/range {p10 .. p10}, Landroid/app/ActivityOptions;->getIgnorePendingIntentCreatorForegroundState()Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_21

    :cond_1f
    move v2, v1

    goto :goto_22

    :cond_21
    :goto_21
    move v2, v8

    :goto_22
    move/from16 v16, v2

    .line 1482
    .local v16, "useCallingUidState":Z
    const/16 v2, 0x3e8

    const-string v3, "ActivityTaskManager"

    if-eqz v16, :cond_a4

    .line 1483
    const-string v4, ")"

    if-eqz v12, :cond_85

    if-eq v9, v2, :cond_85

    const/16 v5, 0x403

    if-ne v9, v5, :cond_35

    goto :goto_85

    .line 1493
    :cond_35
    invoke-direct {v0, v12, v14}, Lcom/android/server/wm/ActivityStarter;->isHomeApp(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 1494
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v2, :cond_59

    .line 1495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity start allowed for home app callingUid ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    :cond_59
    return v1

    .line 1502
    :cond_5a
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    .line 1503
    .local v5, "imeWindow":Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_a4

    iget v6, v5, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v9, v6, :cond_a4

    .line 1504
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v2, :cond_84

    .line 1505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity start allowed for active ime ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :cond_84
    return v1

    .line 1485
    .end local v5    # "imeWindow":Lcom/android/server/wm/WindowState;
    :cond_85
    :goto_85
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v2, :cond_a3

    .line 1486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity start allowed for important callingUid ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    :cond_a3
    return v1

    .line 1513
    :cond_a4
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getBalAppSwitchesState()I

    move-result v7

    .line 1516
    .local v7, "appSwitchState":I
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {v4, v12}, Lcom/android/server/wm/MirrorActiveUids;->getUidState(I)I

    move-result v6

    .line 1517
    .local v6, "callingUidProcState":I
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->hasActiveVisibleWindow(I)Z

    move-result v5

    .line 1518
    .local v5, "callingUidHasAnyVisibleWindow":Z
    const/4 v4, 0x2

    if-nez v5, :cond_c3

    if-eq v6, v4, :cond_c3

    const/4 v2, 0x3

    if-ne v6, v2, :cond_c1

    goto :goto_c3

    :cond_c1
    move v2, v1

    goto :goto_c4

    :cond_c3
    :goto_c3
    move v2, v8

    .line 1521
    .local v2, "isCallingUidForeground":Z
    :goto_c4
    if-gt v6, v8, :cond_c9

    move/from16 v18, v8

    goto :goto_cb

    :cond_c9
    move/from16 v18, v1

    :goto_cb
    move/from16 v19, v18

    .line 1526
    .local v19, "isCallingUidPersistentSystemProcess":Z
    if-eq v7, v4, :cond_d5

    if-ne v7, v8, :cond_d2

    goto :goto_d5

    :cond_d2
    move/from16 v18, v1

    goto :goto_d7

    :cond_d5
    :goto_d5
    move/from16 v18, v8

    .line 1528
    .local v18, "appSwitchAllowedOrFg":Z
    :goto_d7
    if-nez v18, :cond_e3

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    .line 1529
    invoke-virtual {v8, v12}, Lcom/android/server/wm/MirrorActiveUids;->hasNonAppVisibleWindow(I)Z

    move-result v8

    if-eqz v8, :cond_e5

    :cond_e3
    if-nez v5, :cond_ed

    :cond_e5
    move/from16 v8, v19

    .end local v19    # "isCallingUidPersistentSystemProcess":Z
    .local v8, "isCallingUidPersistentSystemProcess":Z
    if-eqz v8, :cond_ea

    goto :goto_ef

    :cond_ea
    move/from16 v19, v1

    goto :goto_f1

    .end local v8    # "isCallingUidPersistentSystemProcess":Z
    .restart local v19    # "isCallingUidPersistentSystemProcess":Z
    :cond_ed
    move/from16 v8, v19

    .end local v19    # "isCallingUidPersistentSystemProcess":Z
    .restart local v8    # "isCallingUidPersistentSystemProcess":Z
    :goto_ef
    const/16 v19, 0x1

    .line 1532
    .local v19, "allowCallingUidStartActivity":Z
    :goto_f1
    if-eqz v16, :cond_11b

    if-eqz v19, :cond_11b

    .line 1533
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v4, :cond_119

    .line 1534
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity start allowed: callingUidHasAnyVisibleWindow = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", isCallingUidPersistentSystemProcess = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    :cond_119
    const/4 v1, 0x0

    return v1

    .line 1541
    :cond_11b
    if-ne v12, v15, :cond_11f

    .line 1542
    move v1, v6

    goto :goto_127

    .line 1543
    :cond_11f
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {v1, v15}, Lcom/android/server/wm/MirrorActiveUids;->getUidState(I)I

    move-result v1

    :goto_127
    nop

    .line 1544
    .local v1, "realCallingUidProcState":I
    if-ne v12, v15, :cond_12c

    .line 1545
    move v4, v5

    goto :goto_132

    .line 1546
    :cond_12c
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4, v15}, Lcom/android/server/wm/ActivityTaskManagerService;->hasActiveVisibleWindow(I)Z

    move-result v4

    :goto_132
    nop

    .line 1547
    .local v4, "realCallingUidHasAnyVisibleWindow":Z
    if-ne v12, v15, :cond_139

    .line 1548
    move/from16 v23, v9

    move v9, v2

    goto :goto_146

    .line 1550
    :cond_139
    if-nez v4, :cond_143

    move/from16 v23, v9

    const/4 v9, 0x2

    .end local v9    # "callingAppId":I
    .local v23, "callingAppId":I
    if-ne v1, v9, :cond_141

    goto :goto_145

    :cond_141
    const/4 v9, 0x0

    goto :goto_146

    .end local v23    # "callingAppId":I
    .restart local v9    # "callingAppId":I
    :cond_143
    move/from16 v23, v9

    .end local v9    # "callingAppId":I
    .restart local v23    # "callingAppId":I
    :goto_145
    const/4 v9, 0x1

    :goto_146
    nop

    .line 1551
    .local v9, "isRealCallingUidForeground":Z
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    .line 1552
    .local v11, "realCallingAppId":I
    if-ne v12, v15, :cond_151

    .line 1553
    move/from16 v22, v9

    move v9, v8

    goto :goto_15e

    .line 1555
    :cond_151
    move/from16 v22, v9

    const/16 v9, 0x3e8

    .end local v9    # "isRealCallingUidForeground":Z
    .local v22, "isRealCallingUidForeground":Z
    if-eq v11, v9, :cond_15d

    const/4 v9, 0x1

    if-gt v1, v9, :cond_15b

    goto :goto_15d

    :cond_15b
    const/4 v9, 0x0

    goto :goto_15e

    :cond_15d
    :goto_15d
    const/4 v9, 0x1

    :goto_15e
    nop

    .line 1559
    .local v9, "isRealCallingUidPersistentSystemProcess":Z
    invoke-static/range {p4 .. p4}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v17

    if-eqz v17, :cond_1a4

    .line 1560
    nop

    .line 1561
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v17

    .line 1560
    move/from16 v24, v11

    .end local v11    # "realCallingAppId":I
    .local v24, "realCallingAppId":I
    invoke-static/range {v17 .. v17}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result v11

    .line 1563
    .local v11, "realCallingSdkSandboxUidToAppUid":I
    move/from16 v17, v1

    .end local v1    # "realCallingUidProcState":I
    .local v17, "realCallingUidProcState":I
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, v11}, Lcom/android/server/wm/ActivityTaskManagerService;->hasActiveVisibleWindow(I)Z

    move-result v1

    if-eqz v1, :cond_1a1

    .line 1564
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v1, :cond_19d

    .line 1565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v11

    .end local v11    # "realCallingSdkSandboxUidToAppUid":I
    .local v25, "realCallingSdkSandboxUidToAppUid":I
    const-string v11, "Activity start allowed: uid in SDK sandbox ("

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, ") has visible (non-toast) window."

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19f

    .line 1564
    .end local v25    # "realCallingSdkSandboxUidToAppUid":I
    .restart local v11    # "realCallingSdkSandboxUidToAppUid":I
    :cond_19d
    move/from16 v25, v11

    .line 1568
    .end local v11    # "realCallingSdkSandboxUidToAppUid":I
    .restart local v25    # "realCallingSdkSandboxUidToAppUid":I
    :goto_19f
    const/4 v1, 0x0

    return v1

    .line 1563
    .end local v25    # "realCallingSdkSandboxUidToAppUid":I
    .restart local v11    # "realCallingSdkSandboxUidToAppUid":I
    :cond_1a1
    move/from16 v25, v11

    .end local v11    # "realCallingSdkSandboxUidToAppUid":I
    .restart local v25    # "realCallingSdkSandboxUidToAppUid":I
    goto :goto_1a8

    .line 1559
    .end local v17    # "realCallingUidProcState":I
    .end local v24    # "realCallingAppId":I
    .end local v25    # "realCallingSdkSandboxUidToAppUid":I
    .restart local v1    # "realCallingUidProcState":I
    .local v11, "realCallingAppId":I
    :cond_1a4
    move/from16 v17, v1

    move/from16 v24, v11

    .line 1573
    .end local v1    # "realCallingUidProcState":I
    .end local v11    # "realCallingAppId":I
    .restart local v17    # "realCallingUidProcState":I
    .restart local v24    # "realCallingAppId":I
    :goto_1a8
    nop

    .line 1574
    invoke-static/range {p10 .. p10}, Lcom/android/server/am/PendingIntentRecord;->isPendingIntentBalAllowedByCaller(Landroid/app/ActivityOptions;)Z

    move-result v25

    .line 1576
    .local v25, "balAllowedByPiSender":Z
    const-string v1, ") is companion app"

    const-string v11, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    if-eqz v25, :cond_260

    if-eq v15, v12, :cond_260

    .line 1577
    nop

    .line 1578
    invoke-static/range {p10 .. p10}, Lcom/android/server/am/PendingIntentRecord;->isPendingIntentBalAllowedByPermission(Landroid/app/ActivityOptions;)Z

    move-result v26

    .line 1579
    .local v26, "useCallerPermission":Z
    move/from16 v27, v8

    .end local v8    # "isCallingUidPersistentSystemProcess":Z
    .local v27, "isCallingUidPersistentSystemProcess":Z
    const-string v8, "Activity start allowed: realCallingUid ("

    if-eqz v26, :cond_1ec

    move/from16 v28, v6

    .end local v6    # "callingUidProcState":I
    .local v28, "callingUidProcState":I
    const/4 v6, -0x1

    move/from16 v29, v5

    const/4 v5, 0x1

    .end local v5    # "callingUidHasAnyVisibleWindow":Z
    .local v29, "callingUidHasAnyVisibleWindow":Z
    invoke-static {v11, v15, v6, v5}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v6

    if-nez v6, :cond_1f0

    .line 1583
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v1, :cond_1ea

    .line 1584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ") has BAL permission."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    :cond_1ea
    const/4 v1, 0x0

    return v1

    .line 1579
    .end local v28    # "callingUidProcState":I
    .end local v29    # "callingUidHasAnyVisibleWindow":Z
    .restart local v5    # "callingUidHasAnyVisibleWindow":Z
    .restart local v6    # "callingUidProcState":I
    :cond_1ec
    move/from16 v29, v5

    move/from16 v28, v6

    .line 1592
    .end local v5    # "callingUidHasAnyVisibleWindow":Z
    .end local v6    # "callingUidProcState":I
    .restart local v28    # "callingUidProcState":I
    .restart local v29    # "callingUidHasAnyVisibleWindow":Z
    :cond_1f0
    if-eqz v4, :cond_212

    .line 1593
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v1, :cond_210

    .line 1594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ") has visible (non-toast) window"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    :cond_210
    const/4 v1, 0x0

    return v1

    .line 1601
    :cond_212
    if-eqz v9, :cond_236

    if-eqz v10, :cond_236

    .line 1602
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v1, :cond_234

    .line 1603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ") is persistent system process AND intent sender allowed (allowBackgroundActivityStart = true)"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    :cond_234
    const/4 v1, 0x0

    return v1

    .line 1610
    :cond_236
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v5, v6, v15}, Lcom/android/server/wm/ActivityTaskManagerService;->isAssociatedCompanionApp(II)Z

    move-result v5

    if-eqz v5, :cond_266

    .line 1612
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v5, :cond_25e

    .line 1613
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    :cond_25e
    const/4 v1, 0x0

    return v1

    .line 1576
    .end local v26    # "useCallerPermission":Z
    .end local v27    # "isCallingUidPersistentSystemProcess":Z
    .end local v28    # "callingUidProcState":I
    .end local v29    # "callingUidHasAnyVisibleWindow":Z
    .restart local v5    # "callingUidHasAnyVisibleWindow":Z
    .restart local v6    # "callingUidProcState":I
    .restart local v8    # "isCallingUidPersistentSystemProcess":Z
    :cond_260
    move/from16 v29, v5

    move/from16 v28, v6

    move/from16 v27, v8

    .line 1619
    .end local v5    # "callingUidHasAnyVisibleWindow":Z
    .end local v6    # "callingUidProcState":I
    .end local v8    # "isCallingUidPersistentSystemProcess":Z
    .restart local v27    # "isCallingUidPersistentSystemProcess":Z
    .restart local v28    # "callingUidProcState":I
    .restart local v29    # "callingUidHasAnyVisibleWindow":Z
    :cond_266
    if-eqz v16, :cond_32e

    .line 1621
    invoke-static {v11, v13, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    if-nez v5, :cond_28a

    .line 1624
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v1, :cond_288

    .line 1625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Background activity start allowed: START_ACTIVITIES_FROM_BACKGROUND permission granted for uid "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    :cond_288
    const/4 v1, 0x0

    return v1

    .line 1633
    :cond_28a
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v5, v12}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v5

    const-string v6, "Background activity start allowed: callingUid ("

    if-eqz v5, :cond_2b6

    .line 1634
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v1, :cond_2b4

    .line 1635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ") is recents"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    :cond_2b4
    const/4 v1, 0x0

    return v1

    .line 1641
    :cond_2b6
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->isDeviceOwner(I)Z

    move-result v5

    if-eqz v5, :cond_2de

    .line 1642
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v1, :cond_2dc

    .line 1643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ") is device owner"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    :cond_2dc
    const/4 v1, 0x0

    return v1

    .line 1649
    :cond_2de
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1650
    .local v5, "callingUserId":I
    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v8, v5, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->isAssociatedCompanionApp(II)Z

    move-result v8

    if-eqz v8, :cond_308

    .line 1652
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v8, :cond_306

    .line 1653
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    :cond_306
    const/4 v1, 0x0

    return v1

    .line 1659
    :cond_308
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, v12, v13, v14}, Lcom/android/server/wm/ActivityTaskManagerService;->hasSystemAlertWindowPermission(IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32e

    .line 1661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Background activity start for "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " allowed because SYSTEM_ALERT_WINDOW permission is granted."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    const/4 v1, 0x0

    return v1

    .line 1670
    .end local v5    # "callingUserId":I
    :cond_32e
    move/from16 v1, p1

    .line 1671
    .local v1, "callerAppUid":I
    if-nez p6, :cond_341

    if-eqz v25, :cond_341

    .line 1672
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move/from16 v11, p5

    invoke-virtual {v5, v11, v15}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v5

    .line 1673
    .end local p6    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v5, "callerApp":Lcom/android/server/wm/WindowProcessController;
    move/from16 v1, p4

    move v6, v1

    move-object v8, v5

    goto :goto_346

    .line 1671
    .end local v5    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local p6    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_341
    move/from16 v11, p5

    .line 1676
    move-object/from16 v8, p6

    move v6, v1

    .end local v1    # "callerAppUid":I
    .end local p6    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v6, "callerAppUid":I
    .local v8, "callerApp":Lcom/android/server/wm/WindowProcessController;
    :goto_346
    if-eqz v8, :cond_3ec

    if-eqz v16, :cond_3ec

    .line 1678
    invoke-virtual {v8, v7}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_380

    .line 1679
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v1, :cond_37e

    .line 1680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Background activity start allowed: callerApp process (pid = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1681
    invoke-virtual {v8}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", uid = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ") is allowed"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1680
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    :cond_37e
    const/4 v1, 0x0

    return v1

    .line 1686
    :cond_380
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 1687
    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcesses(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 1688
    .local v1, "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    if-eqz v1, :cond_3e6

    .line 1689
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v5

    const/16 v20, 0x1

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_392
    if-ltz v5, :cond_3e2

    .line 1690
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 p6, v1

    .end local v1    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .local p6, "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    move-object/from16 v1, v26

    check-cast v1, Lcom/android/server/wm/WindowProcessController;

    .line 1691
    .local v1, "proc":Lcom/android/server/wm/WindowProcessController;
    if-eq v1, v8, :cond_3d8

    .line 1692
    invoke-virtual {v1, v7}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed(I)Z

    move-result v26

    if-eqz v26, :cond_3d6

    .line 1693
    sget-boolean v20, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v20, :cond_3d4

    .line 1694
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Background activity start allowed: process "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1695
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " from uid "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " is allowed"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1694
    invoke-static {v3, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    :cond_3d4
    const/4 v11, 0x0

    return v11

    .line 1692
    :cond_3d6
    const/4 v11, 0x0

    goto :goto_3d9

    .line 1691
    :cond_3d8
    const/4 v11, 0x0

    .line 1689
    .end local v1    # "proc":Lcom/android/server/wm/WindowProcessController;
    :goto_3d9
    add-int/lit8 v5, v5, -0x1

    move/from16 v13, p2

    move/from16 v11, p5

    move-object/from16 v1, p6

    goto :goto_392

    .end local p6    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .local v1, "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    :cond_3e2
    move-object/from16 p6, v1

    const/4 v11, 0x0

    .end local v1    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .restart local p6    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    goto :goto_3ef

    .line 1688
    .end local v5    # "i":I
    .end local p6    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .restart local v1    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    :cond_3e6
    move-object/from16 p6, v1

    const/4 v11, 0x0

    const/16 v20, 0x1

    .end local v1    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .restart local p6    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    goto :goto_3ef

    .line 1676
    .end local p6    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    :cond_3ec
    const/4 v11, 0x0

    const/16 v20, 0x1

    .line 1704
    :goto_3ef
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Background activity start [callingPackage: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "; callingUid: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "; appSwitchState: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "; isCallingUidForeground: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "; callingUidHasAnyVisibleWindow: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v5, v29

    .end local v29    # "callingUidHasAnyVisibleWindow":Z
    .local v5, "callingUidHasAnyVisibleWindow":Z
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v13, "; callingUidProcState: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v13, Landroid/app/ActivityManager;

    .line 1709
    const-string v11, "PROCESS_STATE_"

    move/from16 v26, v6

    move/from16 v6, v28

    .end local v28    # "callingUidProcState":I
    .local v6, "callingUidProcState":I
    .local v26, "callerAppUid":I
    invoke-static {v13, v11, v6}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v13, "; isCallingUidPersistentSystemProcess: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v13, v27

    .end local v27    # "isCallingUidPersistentSystemProcess":Z
    .local v13, "isCallingUidPersistentSystemProcess":Z
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v27, v2

    .end local v2    # "isCallingUidForeground":Z
    .local v27, "isCallingUidForeground":Z
    const-string v2, "; realCallingUid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; isRealCallingUidForeground: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, v22

    .end local v22    # "isRealCallingUidForeground":Z
    .local v2, "isRealCallingUidForeground":Z
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v2    # "isRealCallingUidForeground":Z
    .restart local v22    # "isRealCallingUidForeground":Z
    const-string v2, "; realCallingUidHasAnyVisibleWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; realCallingUidProcState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/app/ActivityManager;

    .line 1715
    move/from16 v28, v4

    move/from16 v4, v17

    .end local v17    # "realCallingUidProcState":I
    .local v4, "realCallingUidProcState":I
    .local v28, "realCallingUidHasAnyVisibleWindow":Z
    invoke-static {v2, v11, v4}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; isRealCallingUidPersistentSystemProcess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; originatingPendingIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v11, p7

    move/from16 v17, v24

    .end local v24    # "realCallingAppId":I
    .local v17, "realCallingAppId":I
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; allowBackgroundActivityStart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; callerApp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; inVisibleTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v8, :cond_4c9

    .line 1723
    invoke-virtual {v8}, Lcom/android/server/wm/WindowProcessController;->hasActivityInVisibleTask()Z

    move-result v2

    if-eqz v2, :cond_4c9

    move/from16 v2, v20

    goto :goto_4ca

    :cond_4c9
    const/4 v2, 0x0

    :goto_4ca
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1704
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isActivityStartsLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_51b

    .line 1727
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v1

    if-eqz v11, :cond_4ee

    move/from16 v21, v20

    goto :goto_4f0

    :cond_4ee
    const/16 v21, 0x0

    :goto_4f0
    move/from16 v24, v4

    .end local v4    # "realCallingUidProcState":I
    .local v24, "realCallingUidProcState":I
    move/from16 v34, v27

    move/from16 v27, v22

    move/from16 v22, v34

    .local v22, "isCallingUidForeground":Z
    .local v27, "isRealCallingUidForeground":Z
    move-object/from16 v2, p9

    move-object v3, v8

    move/from16 v4, p1

    move/from16 v29, v5

    .end local v5    # "callingUidHasAnyVisibleWindow":Z
    .restart local v29    # "callingUidHasAnyVisibleWindow":Z
    move-object/from16 v5, p3

    move/from16 v30, v26

    move/from16 v26, v6

    .end local v6    # "callingUidProcState":I
    .local v26, "callingUidProcState":I
    .local v30, "callerAppUid":I
    move/from16 v31, v7

    .end local v7    # "appSwitchState":I
    .local v31, "appSwitchState":I
    move/from16 v7, v29

    move/from16 v32, v20

    move-object/from16 v20, v8

    .end local v8    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v20, "callerApp":Lcom/android/server/wm/WindowProcessController;
    move/from16 v8, p4

    move/from16 v33, v9

    .end local v9    # "isRealCallingUidPersistentSystemProcess":Z
    .local v33, "isRealCallingUidPersistentSystemProcess":Z
    move/from16 v9, v24

    move/from16 v10, v28

    move/from16 v11, v21

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/wm/ActivityMetricsLogger;->logAbortedBgActivityStart(Landroid/content/Intent;Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;IZIIZZ)V

    goto :goto_531

    .line 1726
    .end local v20    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v24    # "realCallingUidProcState":I
    .end local v29    # "callingUidHasAnyVisibleWindow":Z
    .end local v30    # "callerAppUid":I
    .end local v31    # "appSwitchState":I
    .end local v33    # "isRealCallingUidPersistentSystemProcess":Z
    .restart local v4    # "realCallingUidProcState":I
    .restart local v5    # "callingUidHasAnyVisibleWindow":Z
    .restart local v6    # "callingUidProcState":I
    .restart local v7    # "appSwitchState":I
    .restart local v8    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v9    # "isRealCallingUidPersistentSystemProcess":Z
    .local v22, "isRealCallingUidForeground":Z
    .local v26, "callerAppUid":I
    .local v27, "isCallingUidForeground":Z
    :cond_51b
    move/from16 v24, v4

    move/from16 v29, v5

    move/from16 v31, v7

    move/from16 v33, v9

    move/from16 v32, v20

    move/from16 v30, v26

    move/from16 v26, v6

    move-object/from16 v20, v8

    move/from16 v34, v27

    move/from16 v27, v22

    move/from16 v22, v34

    .line 1732
    .end local v4    # "realCallingUidProcState":I
    .end local v5    # "callingUidHasAnyVisibleWindow":Z
    .end local v6    # "callingUidProcState":I
    .end local v7    # "appSwitchState":I
    .end local v8    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v9    # "isRealCallingUidPersistentSystemProcess":Z
    .restart local v20    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v22, "isCallingUidForeground":Z
    .restart local v24    # "realCallingUidProcState":I
    .local v26, "callingUidProcState":I
    .local v27, "isRealCallingUidForeground":Z
    .restart local v29    # "callingUidHasAnyVisibleWindow":Z
    .restart local v30    # "callerAppUid":I
    .restart local v31    # "appSwitchState":I
    .restart local v33    # "isRealCallingUidPersistentSystemProcess":Z
    :goto_531
    return v32
.end method

.method startActivityInner(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;ZLcom/android/server/uri/NeededUriGrants;)I
    .registers 40
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/app/ActivityOptions;
    .param p8, "inTask"    # Lcom/android/server/wm/Task;
    .param p9, "inTaskFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p10, "restrictedBgActivity"    # Z
    .param p11, "intentGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 1998
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p11

    invoke-static {}, Lcom/android/server/wm/PreloadStateManagerStub;->get()Lcom/android/server/wm/PreloadStateManagerStub;

    move-result-object v0

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-interface/range {v0 .. v5}, Lcom/android/server/wm/PreloadStateManagerStub;->startActivityInjector(Lcom/android/server/wm/ActivityStarter$Request;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)Landroid/app/ActivityOptions;

    move-result-object v15

    .line 2000
    .end local p7    # "options":Landroid/app/ActivityOptions;
    .local v15, "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move/from16 v5, p6

    move/from16 v6, p5

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/android/server/wm/ActivityStarter;->setInitialState(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;ZILcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)V

    .line 2003
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->computeLaunchingTaskFlags()V

    .line 2005
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->computeSourceRootTask()V

    .line 2007
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v1, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2009
    const/4 v0, 0x0

    .line 2011
    .local v0, "dreamStopping":Z
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x5

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 2012
    .local v2, "stoppingActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v4

    if-ne v4, v3, :cond_5e

    .line 2014
    const/4 v0, 0x1

    .line 2015
    move v9, v0

    goto :goto_60

    .line 2017
    .end local v2    # "stoppingActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_5e
    goto :goto_48

    .line 2011
    :cond_5f
    move v9, v0

    .line 2020
    .end local v0    # "dreamStopping":Z
    .local v9, "dreamStopping":Z
    :goto_60
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v10

    .line 2021
    .local v10, "prevTopRootTask":Lcom/android/server/wm/Task;
    if-eqz v10, :cond_6d

    invoke-virtual {v10}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_6e

    :cond_6d
    const/4 v0, 0x0

    :goto_6e
    move-object v6, v0

    .line 2022
    .local v6, "prevTopTask":Lcom/android/server/wm/Task;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->getReusableTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 2024
    .local v5, "reusedTask":Lcom/android/server/wm/Task;
    const/4 v0, 0x0

    .line 2025
    .local v0, "callerApp":Lcom/android/server/wm/WindowProcessController;
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_87

    .line 2026
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_89

    .line 2025
    :cond_87
    move-object/from16 v16, v0

    .line 2028
    .end local v0    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v16, "callerApp":Lcom/android/server/wm/WindowProcessController;
    :goto_89
    const-string v0, "ActivityTaskManager"

    const/4 v2, 0x0

    if-eqz v5, :cond_e7

    if-eqz v16, :cond_a0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v1

    if-eqz v1, :cond_a0

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_a0

    .line 2029
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    if-ne v1, v3, :cond_b4

    :cond_a0
    if-eqz v13, :cond_e7

    iget-object v1, v13, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 2030
    invoke-static {v1}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isWpsPreStartActivity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 2031
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    if-eq v1, v3, :cond_e7

    .line 2032
    :cond_b4
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v1

    if-nez v1, :cond_e7

    .line 2033
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    iget v4, v5, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2034
    invoke-interface {v1, v4}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v1

    .line 2035
    .local v1, "mffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-eqz v1, :cond_e7

    .line 2036
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start fullscreen from freeform, reusedTask.mTaskId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v0, v2, v1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->startFullscreenFromFreeform(ZLcom/android/server/wm/MiuiFreeFormActivityStackStub;)V

    .line 2038
    return v2

    .line 2044
    .end local v1    # "mffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    :cond_e7
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v4, 0x1

    if-eqz v1, :cond_111

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->freezeRecentTasksReordering()Z

    move-result v1

    if-eqz v1, :cond_111

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget v7, v12, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 2045
    invoke-virtual {v1, v7}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v1

    if-eqz v1, :cond_111

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 2046
    invoke-virtual {v1}, Lcom/android/server/wm/RecentTasks;->isFreezeTaskListReorderingSet()Z

    move-result v1

    if-nez v1, :cond_111

    .line 2047
    iput-boolean v4, v11, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 2048
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1}, Lcom/android/server/wm/RecentTasks;->setFreezeTaskListReordering()V

    .line 2052
    :cond_111
    if-eqz v5, :cond_115

    move-object v1, v5

    goto :goto_119

    :cond_115
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->computeTargetTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2053
    .local v1, "targetTask":Lcom/android/server/wm/Task;
    :goto_119
    if-nez v1, :cond_11d

    move v7, v4

    goto :goto_11e

    :cond_11d
    move v7, v2

    .line 2054
    .local v7, "newTask":Z
    :goto_11e
    iput-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 2056
    if-eqz v1, :cond_132

    .line 2057
    iget-object v8, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v8, v1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->startActivityUncheckedBefore(Lcom/android/server/wm/Task;)Z

    move-result v8

    if-eqz v8, :cond_132

    .line 2058
    const-string v3, "Can not start activity for small window is closing"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    return v2

    .line 2063
    :cond_132
    iget-object v8, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v8, :cond_153

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v8

    if-ne v8, v3, :cond_153

    if-eqz v1, :cond_146

    if-eqz v1, :cond_153

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v8

    if-eq v8, v3, :cond_153

    :cond_146
    iget-object v8, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    iget-object v3, v12, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 2064
    invoke-interface {v8, v3}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->shouldStopStartFreeform(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_153

    .line 2065
    return v2

    .line 2067
    :cond_153
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    iget-object v8, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-interface {v3, v8, v1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->launchFullscreenInDesktopModeIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    .line 2069
    invoke-direct {v11, v12, v13, v1}, Lcom/android/server/wm/ActivityStarter;->computeLaunchParams(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    .line 2072
    invoke-virtual {v11, v12, v7, v1}, Lcom/android/server/wm/ActivityStarter;->isAllowedToStart(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/Task;)I

    move-result v3

    .line 2073
    .local v3, "startResult":I
    if-eqz v3, :cond_181

    .line 2074
    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_180

    .line 2075
    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    const/16 v18, -0x1

    iget-object v2, v12, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v4, v12, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v0

    move-object/from16 v19, v2

    move/from16 v20, v4

    invoke-virtual/range {v17 .. v23}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 2078
    :cond_180
    return v3

    .line 2081
    :cond_181
    const/16 v8, 0x66

    if-eqz v1, :cond_1fb

    .line 2082
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTreeWeight()I

    move-result v2

    move-object/from16 v19, v5

    .end local v5    # "reusedTask":Lcom/android/server/wm/Task;
    .local v19, "reusedTask":Lcom/android/server/wm/Task;
    int-to-long v4, v2

    const-wide/16 v21, 0x12c

    cmp-long v2, v4, v21

    if-lez v2, :cond_1c4

    .line 2083
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " because it has contained too many activities or windows (abort starting "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " from uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v11, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    const-string v0, "bulky-task"

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    .line 2087
    return v8

    .line 2089
    :cond_1c4
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    .line 2091
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-interface {v0, v1, v2, v4}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->onStartActivity(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Landroid/content/Intent;)V

    .line 2092
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v0

    if-eqz v0, :cond_1fd

    if-eqz v1, :cond_1fd

    if-eqz v16, :cond_1fd

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v0

    if-eqz v0, :cond_1fd

    .line 2093
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    iget v2, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2094
    invoke-interface {v0, v2}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v0

    .line 2095
    .local v0, "mffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v2, v1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->trackSmallWindowEnterWayEvent(Lcom/android/server/wm/Task;)V

    goto :goto_1fd

    .line 2081
    .end local v0    # "mffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    .end local v19    # "reusedTask":Lcom/android/server/wm/Task;
    .restart local v5    # "reusedTask":Lcom/android/server/wm/Task;
    :cond_1fb
    move-object/from16 v19, v5

    .line 2100
    .end local v5    # "reusedTask":Lcom/android/server/wm/Task;
    .restart local v19    # "reusedTask":Lcom/android/server/wm/Task;
    :cond_1fd
    :goto_1fd
    invoke-static {}, Lcom/android/server/wm/ActivityStarterStub;->get()Lcom/android/server/wm/ActivityStarterStub;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityStarterStub;->finishLaunchedFromActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    .line 2102
    if-eqz v7, :cond_208

    .line 2103
    const/4 v0, 0x0

    goto :goto_20c

    :cond_208
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_20c
    move-object v5, v0

    .line 2104
    .local v5, "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_218

    .line 2106
    move-object/from16 v2, v19

    .end local v19    # "reusedTask":Lcom/android/server/wm/Task;
    .local v2, "reusedTask":Lcom/android/server/wm/Task;
    invoke-virtual {v11, v1, v5, v2, v14}, Lcom/android/server/wm/ActivityStarter;->recycleTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)I

    move-result v3

    .line 2107
    if-eqz v3, :cond_21d

    .line 2108
    return v3

    .line 2111
    .end local v2    # "reusedTask":Lcom/android/server/wm/Task;
    .restart local v19    # "reusedTask":Lcom/android/server/wm/Task;
    :cond_218
    move-object/from16 v2, v19

    .end local v19    # "reusedTask":Lcom/android/server/wm/Task;
    .restart local v2    # "reusedTask":Lcom/android/server/wm/Task;
    const/4 v0, 0x1

    iput-boolean v0, v11, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2116
    :cond_21d
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2117
    .local v0, "topRootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_259

    .line 2123
    if-eq v0, v1, :cond_236

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v4, :cond_236

    .line 2124
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v4

    const/4 v8, 0x5

    if-eq v4, v8, :cond_233

    goto :goto_236

    :cond_233
    move-object/from16 v17, v0

    goto :goto_25b

    .line 2125
    :cond_236
    :goto_236
    invoke-direct {v11, v0, v14}, Lcom/android/server/wm/ActivityStarter;->deliverToCurrentTopIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)I

    move-result v3

    .line 2126
    if-eqz v3, :cond_23d

    .line 2127
    return v3

    .line 2129
    :cond_23d
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 2130
    .local v4, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    move-object/from16 v17, v0

    const/4 v8, 0x1

    .end local v0    # "topRootTask":Lcom/android/server/wm/Task;
    .local v17, "topRootTask":Lcom/android/server/wm/Task;
    new-array v0, v8, [I

    .line 2131
    .local v0, "result":[I
    new-instance v8, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;

    invoke-direct {v8, v11, v0, v14}, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityStarter;[ILcom/android/server/uri/NeededUriGrants;)V

    invoke-virtual {v4, v8}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v8

    .line 2140
    .local v8, "task":Lcom/android/server/wm/Task;
    if-eqz v8, :cond_256

    .line 2141
    const/16 v18, 0x0

    aget v18, v0, v18

    return v18

    .line 2140
    :cond_256
    move/from16 v21, v3

    goto :goto_25d

    .line 2117
    .end local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v8    # "task":Lcom/android/server/wm/Task;
    .end local v17    # "topRootTask":Lcom/android/server/wm/Task;
    .local v0, "topRootTask":Lcom/android/server/wm/Task;
    :cond_259
    move-object/from16 v17, v0

    .line 2149
    .end local v0    # "topRootTask":Lcom/android/server/wm/Task;
    .restart local v17    # "topRootTask":Lcom/android/server/wm/Task;
    :goto_25b
    move/from16 v21, v3

    .end local v3    # "startResult":I
    .local v21, "startResult":I
    :goto_25d
    sget-object v0, Lcom/android/server/wm/ActivityStarter;->imp:Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getLastFrame(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_271

    .line 2150
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->setLastFrame(Z)V

    .line 2154
    :cond_271
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_281

    .line 2155
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {v11, v0, v3, v1, v4}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2160
    :cond_281
    invoke-static {}, Lcom/android/server/wm/ActivityStarterStub;->get()Lcom/android/server/wm/ActivityStarterStub;

    move-result-object v0

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v8, v11, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v3, v4, v12, v8}, Lcom/android/server/wm/ActivityStarterStub;->carlinkJudge(Landroid/content/Context;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/RootWindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_296

    .line 2162
    const/16 v0, 0x66

    return v0

    .line 2166
    :cond_296
    if-eqz v7, :cond_2aa

    .line 2167
    iget-boolean v0, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_2a5

    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2a5

    .line 2168
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_2a6

    :cond_2a5
    const/4 v0, 0x0

    .line 2169
    .local v0, "taskToAffiliate":Lcom/android/server/wm/Task;
    :goto_2a6
    invoke-direct {v11, v0}, Lcom/android/server/wm/ActivityStarter;->setNewTask(Lcom/android/server/wm/Task;)V

    .end local v0    # "taskToAffiliate":Lcom/android/server/wm/Task;
    goto :goto_2b4

    .line 2170
    :cond_2aa
    iget-boolean v0, v11, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-eqz v0, :cond_2b4

    .line 2171
    const-string v0, "adding to task"

    invoke-direct {v11, v1, v0}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    goto :goto_2b5

    .line 2170
    :cond_2b4
    :goto_2b4
    nop

    .line 2175
    :goto_2b5
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v8, v11, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-interface {v0, v3, v4, v8}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->onStartActivity(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Landroid/content/Intent;)V

    .line 2176
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-interface {v0, v3, v4}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->onShowToastIfNeeded(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;)V

    .line 2177
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v0

    if-eqz v0, :cond_2f4

    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_2f4

    if-eqz v16, :cond_2f4

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v0

    if-eqz v0, :cond_2f4

    .line 2178
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2179
    invoke-interface {v0, v3}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v0

    .line 2180
    .local v0, "mffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-interface {v3, v4}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->trackSmallWindowEnterWayEvent(Lcom/android/server/wm/Task;)V

    .line 2185
    .end local v0    # "mffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    :cond_2f4
    iget-boolean v0, v11, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v0, :cond_322

    iget-boolean v0, v11, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_322

    .line 2186
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const-string/jumbo v3, "reuseOrNewTask"

    invoke-virtual {v0, v3, v1}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 2187
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v0

    if-nez v0, :cond_320

    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_320

    if-nez v9, :cond_320

    .line 2191
    const/4 v0, 0x1

    iput-boolean v0, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 2192
    iput-boolean v0, v12, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    goto :goto_323

    .line 2187
    :cond_320
    const/4 v0, 0x1

    goto :goto_323

    .line 2185
    :cond_322
    const/4 v0, 0x1

    .line 2196
    :goto_323
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2197
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v4

    .line 2196
    invoke-interface {v3, v14, v4}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 2198
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_379

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_379

    .line 2200
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2201
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    .line 2202
    .local v3, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v8, v1

    .end local v1    # "targetTask":Lcom/android/server/wm/Task;
    .local v8, "targetTask":Lcom/android/server/wm/Task;
    const-wide/16 v0, 0x0

    move-object/from16 v19, v2

    .end local v2    # "reusedTask":Lcom/android/server/wm/Task;
    .restart local v19    # "reusedTask":Lcom/android/server/wm/Task;
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 2205
    .local v0, "resultToUid":I
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2206
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v25

    const/16 v27, 0x1

    .line 2205
    move-object/from16 v22, v3

    move/from16 v23, v1

    move-object/from16 v24, v2

    move/from16 v26, v0

    invoke-virtual/range {v22 .. v27}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    goto :goto_37c

    .line 2198
    .end local v0    # "resultToUid":I
    .end local v3    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v8    # "targetTask":Lcom/android/server/wm/Task;
    .end local v19    # "reusedTask":Lcom/android/server/wm/Task;
    .restart local v1    # "targetTask":Lcom/android/server/wm/Task;
    .restart local v2    # "reusedTask":Lcom/android/server/wm/Task;
    :cond_379
    move-object v8, v1

    move-object/from16 v19, v2

    .line 2209
    .end local v1    # "targetTask":Lcom/android/server/wm/Task;
    .end local v2    # "reusedTask":Lcom/android/server/wm/Task;
    .restart local v8    # "targetTask":Lcom/android/server/wm/Task;
    .restart local v19    # "reusedTask":Lcom/android/server/wm/Task;
    :goto_37c
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2210
    .local v3, "startedTask":Lcom/android/server/wm/Task;
    if-eqz v7, :cond_38d

    .line 2211
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v1, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v0, v1}, Lcom/android/server/wm/EventLogTags;->writeWmCreateTask(II)V

    .line 2213
    :cond_38d
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/16 v1, 0x7535

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/ActivityRecord;->logStartActivity(ILcom/android/server/wm/Task;)V

    .line 2215
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    .line 2217
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 2220
    if-eq v3, v6, :cond_3af

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isEmbedded()Z

    move-result v0

    if-nez v0, :cond_3af

    const/4 v4, 0x1

    goto :goto_3b0

    :cond_3af
    move v4, v2

    .line 2225
    .local v4, "isTaskSwitch":Z
    :goto_3b0
    if-eqz v6, :cond_3b7

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    goto :goto_3b8

    :cond_3b7
    move v0, v2

    :goto_3b8
    move/from16 v18, v7

    .end local v7    # "newTask":Z
    .local v18, "newTask":Z
    move v7, v0

    .line 2226
    .local v7, "prevTopTaskWindowMode":I
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v20

    .line 2227
    .local v20, "startedTaskWindowMode":I
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    move-object/from16 v22, v5

    .end local v5    # "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    .local v22, "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    iget-object v5, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move-object/from16 v23, v8

    .end local v8    # "targetTask":Lcom/android/server/wm/Task;
    .local v23, "targetTask":Lcom/android/server/wm/Task;
    move-object/from16 v8, v19

    move/from16 v19, v9

    move v9, v2

    .end local v9    # "dreamStopping":Z
    .local v8, "reusedTask":Lcom/android/server/wm/Task;
    .local v19, "dreamStopping":Z
    move-object/from16 v2, v17

    move-object/from16 v24, v3

    .end local v3    # "startedTask":Lcom/android/server/wm/Task;
    .local v24, "startedTask":Lcom/android/server/wm/Task;
    move/from16 v3, v18

    move-object/from16 v25, v22

    move-object/from16 v22, v8

    .end local v8    # "reusedTask":Lcom/android/server/wm/Task;
    .local v22, "reusedTask":Lcom/android/server/wm/Task;
    .local v25, "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v26, v6

    .end local v6    # "prevTopTask":Lcom/android/server/wm/Task;
    .local v26, "prevTopTask":Lcom/android/server/wm/Task;
    move-object/from16 v6, p2

    move-object/from16 v27, v10

    const/4 v10, 0x0

    .end local v10    # "prevTopRootTask":Lcom/android/server/wm/Task;
    .local v27, "prevTopRootTask":Lcom/android/server/wm/Task;
    move/from16 v8, v20

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/Task;->startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;ZZLandroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;II)V

    .line 2230
    iget-boolean v0, v11, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_435

    .line 2231
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2232
    .local v0, "topTaskActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isTopActivityFocusable()Z

    move-result v1

    if-eqz v1, :cond_429

    if-eqz v0, :cond_401

    .line 2233
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v1

    if-eqz v1, :cond_401

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v1, v0, :cond_401

    goto :goto_429

    .line 2254
    :cond_401
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isTopActivityFocusable()Z

    move-result v1

    if-eqz v1, :cond_41b

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2255
    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->isTopDisplayFocusedRootTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-nez v1, :cond_41b

    .line 2256
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const-string/jumbo v2, "startActivityInner"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 2258
    :cond_41b
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-boolean v6, v11, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    goto :goto_435

    .line 2243
    :cond_429
    :goto_429
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v10, v9, v9}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2247
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 2262
    .end local v0    # "topTaskActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_435
    :goto_435
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/RootWindowContainer;->updateUserRootTask(ILcom/android/server/wm/Task;)V

    .line 2265
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    move-object/from16 v1, v24

    .end local v24    # "startedTask":Lcom/android/server/wm/Task;
    .local v1, "startedTask":Lcom/android/server/wm/Task;
    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 2266
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v2, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v5, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;)V

    .line 2271
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_479

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->isLaunchIntoPip()Z

    move-result v0

    if-eqz v0, :cond_479

    if-eqz v13, :cond_479

    .line 2272
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-ne v0, v2, :cond_479

    iget-boolean v0, v11, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    if-nez v0, :cond_479

    .line 2274
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v3, "launch-into-pip"

    invoke-virtual {v0, v2, v13, v3}, Lcom/android/server/wm/RootWindowContainer;->moveActivityToPinnedRootTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 2278
    :cond_479
    return v9
.end method
