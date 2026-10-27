.class public Lcom/android/server/wm/BackNavigationController;
.super Ljava/lang/Object;
.source "BackNavigationController.java"


# static fields
.field public static sDefaultAnimationResId:I

.field public static final sPredictBackEnable:Z


# instance fields
.field public mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

.field public mBackAnimationInProgress:Z

.field public mCurrentAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

.field public mLastBackType:I

.field public final mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

.field public mPendingAnimation:Ljava/lang/Runnable;

.field public mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

.field public mShowWallpaper:Z

.field public final mTmpCloseApps:Ljava/util/ArrayList;

.field public final mTmpOpenApps:Ljava/util/ArrayList;

.field public mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$4vy4ODzqwf9KsBnQK5usIyMQEB0(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    .line 507
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$9FAtneOmsYwhkA7x9NZbSzZmCVg(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    .line 529
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$9Kvt3kHUr6CNuARDXXol9fRjZMQ(Landroid/os/IBinder;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 550
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_e

    iget-object p1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 551
    invoke-interface {p1, p0}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$MpGSwhHhHzFwdxMFmCI8GhqOovU(Ljava/util/ArrayList;Lcom/android/server/wm/TaskFragment;)V
    .registers 2

    .line 632
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 634
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public static synthetic $r8$lambda$aEfh57pa9MPfvpbItwbYJ6J73d4(Lcom/android/server/wm/BackNavigationController;Landroid/os/Bundle;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController;->lambda$startBackNavigation$0(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dzjU19f-cdWdq3iK18MCOe7rztY([Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment;)Z
    .registers 3

    const/4 v0, 0x0

    .line 566
    aput-object p1, p0, v0

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$gshHKHPxDLeT-CusDPid5DQ5E7U(Lcom/android/server/wm/BackNavigationController;ILandroid/os/Bundle;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BackNavigationController;->lambda$startBackNavigation$3(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iba_QcmJPhU9b-dQl7x9mb0PizA(Ljava/util/ArrayList;Lcom/android/server/wm/TaskFragment;)V
    .registers 2

    .line 646
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 648
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public static synthetic $r8$lambda$jtdGhPvR6R8BpMfaHPUFhfbu-Xk(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    .line 531
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$kHoCsZZXCtACviyAxEuj1l9dBBE(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 393
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->showToCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 394
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 395
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$tgk0ALpZ5oEG_CaguMaHjcvH4dU(Lcom/android/server/wm/ActivityRecord;)Landroid/content/ComponentName;
    .registers 1

    .line 435
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static synthetic $r8$lambda$zeWg6C_okbSt8pY-FxCY8pNTnmg(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    .line 582
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAnimationHandler(Lcom/android/server/wm/BackNavigationController;)Lcom/android/server/wm/BackNavigationController$AnimationHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentAnimationBuilder(Lcom/android/server/wm/BackNavigationController;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mCurrentAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManagerService(Lcom/android/server/wm/BackNavigationController;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentAnimationBuilder(Lcom/android/server/wm/BackNavigationController;Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mCurrentAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcanCancelAnimations(Lcom/android/server/wm/BackNavigationController;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController;->canCancelAnimations()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcancelPendingAnimation(Lcom/android/server/wm/BackNavigationController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController;->cancelPendingAnimation()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetTopOpenActivities([Lcom/android/server/wm/WindowContainer;)[Lcom/android/server/wm/ActivityRecord;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController;->getTopOpenActivities([Lcom/android/server/wm/WindowContainer;)[Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smnotifyAnimationCanceled(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController;->notifyAnimationCanceled(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smrestoreLaunchBehind(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/BackNavigationController;->restoreLaunchBehind(Lcom/android/server/wm/ActivityRecord;ZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsetLaunchBehind([Lcom/android/server/wm/ActivityRecord;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController;->setLaunchBehind([Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smvalidateAnimationTargets([Landroid/view/RemoteAnimationTarget;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController;->validateAnimationTargets([Landroid/view/RemoteAnimationTarget;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 115
    const-string v0, "persist.wm.debug.predictive_back"

    const/4 v1, 0x1

    .line 116
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/BackNavigationController;->sPredictBackEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;-><init>(Lcom/android/server/wm/BackNavigationController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    return-void
.end method

.method public static addPreviousAdjacentActivityIfExist(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)V
    .registers 3

    .line 622
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 623
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_d

    goto :goto_1c

    .line 627
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_1c

    .line 630
    :cond_14
    new-instance v0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda11;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Consumer;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public static allActivitiesHaveProcesses(Ljava/util/ArrayList;)Z
    .registers 4

    .line 669
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_19

    .line 670
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 671
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v2

    if-nez v2, :cond_16

    const/4 p0, 0x0

    return p0

    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_19
    return v1
.end method

.method public static allActivitiesHaveWindow(Ljava/util/ArrayList;)Z
    .registers 4

    .line 680
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_19

    .line 681
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 682
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_16

    const/4 p0, 0x0

    return p0

    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_19
    return v1
.end method

.method public static collectAnimatableTarget(Lcom/android/server/wm/Transition;ILcom/android/server/wm/WindowContainer;Z)V
    .registers 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_f

    .line 982
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_18

    .line 983
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-nez v0, :cond_18

    :cond_f
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1e

    .line 985
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 986
    :cond_18
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 987
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/Transition;->setBackGestureAnimation(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_1e
    return-void
.end method

.method public static findAdjacentActivityIfExist(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)V
    .registers 3

    .line 641
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 642
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_15

    .line 645
    :cond_d
    new-instance v0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda12;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Consumer;)V

    :cond_15
    :goto_15
    return-void
.end method

.method public static findNextTaskFragment(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragment;
    .registers 3

    .line 604
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 608
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContainer;

    .line 609
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    return-object p0
.end method

.method public static getAnimatablePrevActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/Task;",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 494
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 496
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 495
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskOrganizerController;->shouldInterceptBackPressedOnRootTask(Lcom/android/server/wm/Task;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    return v1

    :cond_10
    const/4 v0, 0x1

    .line 500
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 502
    invoke-static {p1, v2}, Lcom/android/server/wm/ActivityClientController;->shouldMoveTaskToBack(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_1e

    return v0

    .line 507
    :cond_1e
    new-instance v2, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 509
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    if-eqz p1, :cond_d3

    .line 510
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-nez v3, :cond_d3

    if-eqz v2, :cond_3f

    .line 512
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 514
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v0

    .line 517
    :cond_3f
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v3

    if-nez v3, :cond_83

    .line 518
    invoke-static {p0, p1}, Lcom/android/server/wm/BackNavigationController;->findNextTaskFragment(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    .line 519
    invoke-static {p1, v3}, Lcom/android/server/wm/BackNavigationController;->isSecondCompanionToFirst(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment;)Z

    move-result p1

    if-eqz p1, :cond_d3

    .line 520
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->shouldBeFinishedWithCompanionTaskFragment()Z

    move-result p1

    if-eqz p1, :cond_70

    .line 528
    new-instance p1, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v3, p1, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 530
    new-instance v2, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_82

    .line 534
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    invoke-static {p0, p2}, Lcom/android/server/wm/BackNavigationController;->addPreviousAdjacentActivityIfExist(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)V

    goto :goto_82

    .line 548
    :cond_70
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getCompanionToBeFinishedActivity()Landroid/os/IBinder;

    move-result-object p0

    .line 549
    new-instance p1, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_82

    .line 553
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_82
    :goto_82
    return v0

    .line 560
    :cond_83
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragments()Lcom/android/server/wm/TaskFragment$AdjacentSet;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment$AdjacentSet;->size()I

    move-result p2

    const/4 v2, 0x2

    if-gt p2, v2, :cond_cb

    .line 564
    new-array p2, v0, [Lcom/android/server/wm/TaskFragment;

    .line 565
    new-instance v2, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda4;

    invoke-direct {v2, p2}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda4;-><init>([Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {p1, v2}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Predicate;)Z

    .line 569
    aget-object p2, p2, v1

    .line 570
    invoke-static {p1, p2}, Lcom/android/server/wm/BackNavigationController;->isSecondCompanionToFirst(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment;)Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 571
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->shouldBeFinishedWithCompanionTaskFragment()Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 574
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 576
    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    .line 575
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    .line 576
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ge v3, v2, :cond_b9

    goto :goto_ba

    :cond_b9
    move-object p1, p2

    .line 578
    :goto_ba
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 582
    new-instance p2, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda5;

    invoke-direct {p2}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, p2, p1, v1, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-nez p0, :cond_ca

    return v0

    :cond_ca
    return v1

    .line 561
    :cond_cb
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not yet support 3+ adjacent for non-Task TFs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d3
    if-nez v2, :cond_d6

    return v0

    .line 597
    :cond_d6
    invoke-static {v2, p2}, Lcom/android/server/wm/BackNavigationController;->addPreviousAdjacentActivityIfExist(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)V

    .line 598
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method public static getSnapshot(Lcom/android/server/wm/WindowContainer;[Lcom/android/server/wm/ActivityRecord;)Landroid/window/TaskSnapshot;
    .registers 5

    .line 2277
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 2278
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    .line 2280
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x3

    .line 2281
    invoke-virtual {v0, p0, v2}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(II)Landroid/window/TaskSnapshot;

    move-result-object p0

    goto :goto_3b

    .line 2287
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 2288
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 2289
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :cond_2d
    if-eqz v0, :cond_3a

    .line 2292
    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    .line 2293
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->getSnapshot([Lcom/android/server/wm/ActivityRecord;)Landroid/window/TaskSnapshot;

    move-result-object p0

    goto :goto_3b

    :cond_3a
    move-object p0, v1

    .line 2297
    :goto_3b
    invoke-static {p0, p1}, Lcom/android/server/wm/BackNavigationController;->isSnapshotCompatible(Landroid/window/TaskSnapshot;[Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_42

    return-object p0

    :cond_42
    return-object v1
.end method

.method public static getTopOpenActivities([Lcom/android/server/wm/WindowContainer;)[Lcom/android/server/wm/ActivityRecord;
    .registers 4

    const/4 v0, 0x0

    .line 2093
    aget-object v0, p0, v0

    .line 2094
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 2095
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2096
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2097
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 2099
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2100
    invoke-static {v0, p0}, Lcom/android/server/wm/BackNavigationController;->findAdjacentActivityIfExist(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)V

    .line 2103
    :cond_1e
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/wm/ActivityRecord;

    .line 2104
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2a
    if-ltz v1, :cond_37

    .line 2105
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2a

    :cond_37
    return-object v0

    .line 2107
    :cond_38
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 2108
    array-length v0, p0

    .line 2109
    new-array v1, v0, [Lcom/android/server/wm/ActivityRecord;

    add-int/lit8 v0, v0, -0x1

    :goto_43
    if-ltz v0, :cond_50

    .line 2111
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_43

    :cond_50
    return-object v1

    :cond_51
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasTranslucentActivity(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z
    .registers 5

    .line 655
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_2e

    .line 658
    :cond_e
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v1

    :goto_13
    if-ltz p0, :cond_2c

    .line 659
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 660
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->hasWallpaper()Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_2b

    :cond_28
    add-int/lit8 p0, p0, -0x1

    goto :goto_13

    :cond_2b
    :goto_2b
    return v1

    :cond_2c
    const/4 p0, 0x0

    return p0

    :cond_2e
    :goto_2e
    return v1
.end method

.method public static isAllActivitiesCanShowWhenLocked(Ljava/util/ArrayList;)Z
    .registers 3

    .line 691
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_19

    .line 692
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v1

    if-nez v1, :cond_16

    const/4 p0, 0x0

    return p0

    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 696
    :cond_19
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isAllActivitiesCreated(Ljava/util/ArrayList;)Z
    .registers 4

    .line 701
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1b

    .line 702
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 703
    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 p0, 0x0

    return p0

    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 707
    :cond_1b
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isCustomizeExitAnimation(Lcom/android/server/wm/WindowState;)Z
    .registers 5

    .line 758
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v1, "android"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    .line 761
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_33

    .line 762
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    const/4 v2, 0x7

    .line 766
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/TransitionAnimation;->getAnimationResId(Landroid/view/WindowManager$LayoutParams;I)I

    move-result v0

    .line 768
    invoke-static {v0}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 769
    sget v3, Lcom/android/server/wm/BackNavigationController;->sDefaultAnimationResId:I

    if-nez v3, :cond_2d

    .line 770
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/TransitionAnimation;->getDefaultAnimationResId(I)I

    move-result p0

    sput p0, Lcom/android/server/wm/BackNavigationController;->sDefaultAnimationResId:I

    .line 772
    :cond_2d
    sget p0, Lcom/android/server/wm/BackNavigationController;->sDefaultAnimationResId:I

    if-eq p0, v0, :cond_33

    const/4 p0, 0x1

    return p0

    :cond_33
    return v1
.end method

.method public static isSecondCompanionToFirst(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment;)Z
    .registers 2

    if-eqz p1, :cond_a

    .line 617
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getCompanionTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    if-ne p1, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static isSnapshotCompatible(Landroid/window/TaskSnapshot;[Lcom/android/server/wm/ActivityRecord;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 2306
    :cond_4
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    move v2, v0

    :goto_8
    if-ltz v1, :cond_2c

    .line 2307
    aget-object v3, p1, v1

    .line 2308
    invoke-virtual {v3, p0}, Lcom/android/server/wm/ActivityRecord;->isSnapshotOrientationCompatible(Landroid/window/TaskSnapshot;)Z

    move-result v4

    if-nez v4, :cond_13

    return v0

    .line 2311
    :cond_13
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    .line 2313
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getUiMode()I

    move-result v5

    and-int/lit8 v5, v5, 0x30

    if-eq v4, v5, :cond_24

    return v0

    .line 2317
    :cond_24
    invoke-virtual {v3, p0}, Lcom/android/server/wm/ActivityRecord;->isSnapshotComponentCompatible(Landroid/window/TaskSnapshot;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_2c
    return v2
.end method

.method public static notifyAnimationCanceled(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V
    .registers 3

    .line 1163
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;

    invoke-virtual {p0}, Landroid/window/BackAnimationAdapter;->getRunner()Landroid/window/IBackAnimationRunner;

    move-result-object p0

    invoke-interface {p0}, Landroid/window/IBackAnimationRunner;->onAnimationCancelled()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 1165
    const-string v0, "CoreBackPreview"

    const-string v1, "Remote animation gone"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static restoreLaunchBehind(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .registers 9

    .line 2185
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_39

    :cond_7
    const/4 v0, 0x0

    .line 2189
    iput-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 2190
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_23

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x3da5c2b6b5a7cc04L    # -4.5078945212881226E11

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, v5, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_23
    if-eqz p1, :cond_39

    if-eqz p2, :cond_30

    .line 2195
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible()Z

    move-result p1

    if-nez p1, :cond_30

    .line 2196
    invoke-virtual {p0, v0, v0, v2}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZZ)V

    .line 2200
    :cond_30
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    .line 2201
    invoke-virtual {p0}, Lcom/android/server/wm/ActivitySnapshotController;->clearOnBackPressedActivities()V

    :cond_39
    :goto_39
    return-void
.end method

.method public static setLaunchBehind([Lcom/android/server/wm/ActivityRecord;)V
    .registers 9

    .line 2154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2155
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_8
    if-ltz v1, :cond_1d

    .line 2156
    aget-object v3, p0, v1

    .line 2157
    iget-boolean v4, v3, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-nez v4, :cond_1a

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-eqz v4, :cond_17

    goto :goto_1a

    .line 2160
    :cond_17
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    :goto_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 2162
    :cond_1d
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_24

    goto :goto_6c

    .line 2166
    :cond_24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v2

    :goto_29
    if-ltz p0, :cond_6c

    .line 2167
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 2168
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget-object v3, v3, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    .line 2169
    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivitySnapshotController;->addOnBackPressedActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 2170
    iput-boolean v2, v1, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 2172
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_55

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v5, 0x0

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v6, 0x1cd3c640fb4335b0L    # 8.187030472293235E-170

    invoke-static {v4, v6, v7, v5, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2174
    :cond_55
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2176
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 2177
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    const/4 v3, 0x0

    .line 2178
    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/ActivityRecord;->makeVisibleIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_69
    add-int/lit8 p0, p0, -0x1

    goto :goto_29

    :cond_6c
    :goto_6c
    return-void
.end method

.method public static validateAnimationTargets([Landroid/view/RemoteAnimationTarget;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1b

    .line 2071
    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_1b

    .line 2074
    :cond_7
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_a
    if-ltz v1, :cond_1a

    .line 2075
    aget-object v3, p0, v1

    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-nez v3, :cond_17

    return v0

    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_1a
    return v2

    :cond_1b
    :goto_1b
    return v0
.end method


# virtual methods
.method public final canCancelAnimations()Z
    .registers 2

    .line 2220
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->-$$Nest$fgetmPreparedOpenTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)Lcom/android/server/wm/Transition;

    move-result-object p0

    if-nez p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method public final cancelPendingAnimation()V
    .registers 2

    .line 1152
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    if-nez v0, :cond_5

    return-void

    .line 1155
    :cond_5
    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController;->notifyAnimationCanceled(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V

    const/4 v0, 0x0

    .line 1156
    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 1157
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->stopMonitorTransition()V

    return-void
.end method

.method public checkAnimationReady(Lcom/android/server/wm/WallpaperController;)V
    .registers 3

    .line 2206
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    if-nez v0, :cond_5

    goto :goto_27

    .line 2210
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController;->mShowWallpaper:Z

    if-eqz v0, :cond_17

    .line 2211
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2212
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_17

    :cond_16
    return-void

    .line 2213
    :cond_17
    :goto_17
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Ljava/lang/Runnable;

    if-eqz p1, :cond_27

    .line 2214
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    new-instance v0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/BackNavigationController;)V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowAnimator;->addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public clearBackAnimations(Z)V
    .registers 3

    .line 1084
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->clearBackAnimateTarget(Z)V

    .line 1085
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->stopMonitorTransition()V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 8

    .line 2336
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10800000001L

    .line 2337
    iget-boolean v2, p0, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10500000002L

    .line 2338
    iget v2, p0, Lcom/android/server/wm/BackNavigationController;->mLastBackType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10800000003L

    .line 2339
    iget-boolean v2, p0, Lcom/android/server/wm/BackNavigationController;->mShowWallpaper:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2340
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v0

    const-wide v1, 0x10900000004L

    const/4 v3, 0x0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    array-length v0, v0

    if-lez v0, :cond_47

    .line 2342
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenActivities(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)[Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_4c

    .line 2345
    :cond_47
    const-string v0, ""

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2348
    :goto_4c
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    if-nez v0, :cond_5c

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmWaitTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result p0

    if-eqz p0, :cond_5d

    :cond_5c
    const/4 v3, 0x1

    :cond_5d
    const-wide v0, 0x10800000005L

    invoke-virtual {p1, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2350
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public hasFixedRotationAnimation(Lcom/android/server/wm/DisplayContent;)Z
    .registers 4

    .line 734
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 737
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenActivities(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)[Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    aget-object p0, p0, v1

    .line 738
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne p1, v0, :cond_1e

    .line 739
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    return v1
.end method

.method public isInProjectedMode(I)Z
    .registers 12

    .line 792
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_INDEPENDENT_BACK_IN_PROJECTED:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    const/4 v0, -0x1

    if-ne p1, v0, :cond_d

    goto :goto_52

    .line 799
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 800
    array-length v2, v0

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_19
    const/4 v6, 0x1

    if-ge v3, v2, :cond_4d

    aget-object v7, v0, v3

    .line 801
    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    .line 802
    iget-object v9, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v9, v8}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    if-nez v9, :cond_2f

    if-ne p1, v8, :cond_2f

    return v1

    :cond_2f
    if-eqz v9, :cond_36

    .line 807
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    goto :goto_37

    :cond_36
    const/4 v8, 0x0

    :goto_37
    if-eqz v8, :cond_4a

    .line 809
    invoke-virtual {v7}, Landroid/view/Display;->getType()I

    move-result v7

    if-ne v7, v6, :cond_45

    .line 810
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v6

    or-int/2addr v4, v6

    goto :goto_4a

    .line 812
    :cond_45
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v6

    or-int/2addr v5, v6

    :cond_4a
    :goto_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_4d
    if-nez v4, :cond_52

    if-eqz v5, :cond_52

    return v6

    :cond_52
    :goto_52
    return v1
.end method

.method public isKeyguardOccluded(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 743
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 744
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result p1

    .line 745
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardOccluded(I)Z

    move-result p0

    return p0
.end method

.method public isMonitorTransitionTarget(Lcom/android/server/wm/WindowContainer;)Z
    .registers 6

    .line 1059
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 1062
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmSwitchType(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    .line 1063
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_28

    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmSwitchType(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_29

    .line 1065
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_29

    :cond_28
    return v1

    .line 1068
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 1069
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    move-result p0

    if-eqz p0, :cond_3a

    goto :goto_3b

    :cond_3a
    return v1

    :cond_3b
    :goto_3b
    return v2
.end method

.method public isMonitoringFinishTransition()Z
    .registers 2

    .line 711
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->isMonitorForRemote()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public isMonitoringPrepareTransition(Lcom/android/server/wm/Transition;)Z
    .registers 3

    .line 715
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->-$$Nest$fgetmPreparedOpenTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)Lcom/android/server/wm/Transition;

    move-result-object p0

    if-ne p0, p1, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public isStartingSurfaceShown(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 783
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isStartingSurfaceDrawn(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z
    .registers 4

    .line 2329
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController;->mShowWallpaper:Z

    if-eqz v0, :cond_20

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_20

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 2331
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    move-result p0

    if-eqz p0, :cond_20

    return v1

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$startBackNavigation$0(Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x4

    .line 321
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/BackNavigationController;->onBackNavigationDone(Landroid/os/Bundle;I)V

    return-void
.end method

.method public final synthetic lambda$startBackNavigation$3(ILandroid/os/Bundle;)V
    .registers 3

    .line 475
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/BackNavigationController;->onBackNavigationDone(Landroid/os/Bundle;I)V

    return-void
.end method

.method public onAppVisibilityChanged(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 12

    .line 930
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_cb

    .line 934
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->-$$Nest$fgetmPreparedOpenTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)Lcom/android/server/wm/Transition;

    move-result-object v0

    if-eqz v0, :cond_cb

    if-nez p2, :cond_cb

    .line 937
    iget-object p2, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    move-result p2

    if-eqz p2, :cond_cb

    iget-object p2, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 938
    invoke-virtual {p2, p1}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result p2

    if-eqz p2, :cond_cb

    .line 939
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 940
    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object p2

    .line 941
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmSwitchType(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)I

    move-result v1

    .line 944
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenActivities(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)[Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    move v5, v0

    move-object v6, v4

    :goto_49
    if-ltz v2, :cond_62

    .line 945
    iget-object v7, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v7}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenActivities(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)[Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    aget-object v7, v7, v2

    .line 946
    iget-boolean v8, v7, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz v8, :cond_5f

    .line 948
    invoke-virtual {p1, v7}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 950
    invoke-static {v7, v3, v0}, Lcom/android/server/wm/BackNavigationController;->restoreLaunchBehind(Lcom/android/server/wm/ActivityRecord;ZZ)V

    move v5, v3

    move-object v6, v7

    :cond_5f
    add-int/lit8 v2, v2, -0x1

    goto :goto_49

    .line 954
    :cond_62
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    array-length v2, v2

    sub-int/2addr v2, v3

    :goto_6c
    if-ltz v2, :cond_82

    .line 955
    iget-object v7, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v7}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v7, v7, v2

    invoke-static {v7}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    invoke-static {p2, v1, v7, v0}, Lcom/android/server/wm/BackNavigationController;->collectAnimatableTarget(Lcom/android/server/wm/Transition;ILcom/android/server/wm/WindowContainer;Z)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_6c

    .line 959
    :cond_82
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmCloseAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-static {p2, v1, v2, v3}, Lcom/android/server/wm/BackNavigationController;->collectAnimatableTarget(Lcom/android/server/wm/Transition;ILcom/android/server/wm/WindowContainer;Z)V

    if-eqz v5, :cond_c2

    if-ne v1, v3, :cond_c2

    .line 962
    iget-object p2, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->getTopTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-eqz p2, :cond_c2

    .line 964
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenActivities(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)[Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    :goto_af
    if-eq p0, p2, :cond_bf

    .line 965
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 966
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 967
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    goto :goto_af

    .line 969
    :cond_bf
    invoke-virtual {p1, p2}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_c2
    if-eqz v6, :cond_cb

    .line 973
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0, v4, v3}, Lcom/android/server/wm/DisplayContent;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_cb
    :goto_cb
    return-void
.end method

.method public final onBackNavigationDone(Landroid/os/Bundle;I)V
    .registers 6

    if-nez p1, :cond_3

    goto :goto_54

    .line 2256
    :cond_3
    const-string v0, "NavigationFinished"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 2257
    const-string v0, "NavigationFinished"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 2259
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_30

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-wide v1, 0x3b7efecc2bb300dL

    const/16 p2, 0xc

    invoke-static {v0, v1, v2, p2, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2262
    :cond_30
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    .line 2263
    :try_start_38
    iget-object p2, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-virtual {p2}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->stopMonitorForRemote()V

    const/4 p2, 0x0

    .line 2264
    iput-boolean p2, p0, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    .line 2265
    iput-boolean p2, p0, Lcom/android/server/wm/BackNavigationController;->mShowWallpaper:Z

    const/4 p2, 0x0

    .line 2267
    iput-object p2, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Ljava/lang/Runnable;

    .line 2268
    iput-object p2, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 2269
    iput-object p2, p0, Lcom/android/server/wm/BackNavigationController;->mCurrentAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 2270
    monitor-exit p1
    :try_end_4a
    .catchall {:try_start_38 .. :try_end_4a} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_4e
    move-exception p0

    :try_start_4f
    monitor-exit p1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_54
    :goto_54
    return-void
.end method

.method public onEmbeddedWindowGestureTransferred(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 124
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->onEmbeddedWindowGestureTransferred(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public onFocusChanged(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 120
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-static {p0, p1}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->-$$Nest$monFocusWindowChanged(Lcom/android/server/wm/BackNavigationController$NavigationMonitor;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public onTransactionReady(Lcom/android/server/wm/Transition;Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 10

    .line 1002
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController;->isMonitoringPrepareTransition(Lcom/android/server/wm/Transition;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1004
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {p0, p3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->markStartingSurfaceMatch(Landroid/view/SurfaceControl$Transaction;)V

    return-void

    .line 1007
    :cond_c
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_22

    .line 1010
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_22

    .line 1012
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController;->isMonitoringFinishTransition()Z

    move-result v0

    if-nez v0, :cond_23

    :goto_22
    return-void

    .line 1015
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->hasTargetDetached()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1016
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    const-string p1, "targetDetached"

    invoke-static {p0, p1}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->-$$Nest$mcancelBackNavigating(Lcom/android/server/wm/BackNavigationController$NavigationMonitor;Ljava/lang/String;)V

    return-void

    .line 1019
    :cond_33
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_39
    if-ltz v0, :cond_78

    .line 1020
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 1021
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_56

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-nez v3, :cond_56

    .line 1022
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-nez v3, :cond_56

    goto :goto_75

    .line 1026
    :cond_56
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_64

    goto :goto_75

    .line 1030
    :cond_64
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-eqz v3, :cond_70

    .line 1031
    iget-object v3, p0, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_75

    .line 1033
    :cond_70
    iget-object v3, p0, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_75
    add-int/lit8 v0, v0, -0x1

    goto :goto_39

    .line 1036
    :cond_78
    iget-object p2, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    .line 1037
    invoke-virtual {p2, v0, v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->containsBackAnimationTargets(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p2

    .line 1038
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {v0, v1, v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-wide v0, -0x59411bcd8bffc571L

    const/16 v2, 0xc0

    invoke-static {v3, v0, v1, v2, p2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1042
    :cond_ae
    iget-object p2, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-object v0, p2, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mPrepareCloseTransition:Lcom/android/server/wm/Transition;

    if-eqz v0, :cond_bc

    .line 1043
    const-string p0, "CoreBackPreview"

    const-string p1, "Gesture animation is applied on another transition?"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1046
    :cond_bc
    iput-object p1, p2, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mPrepareCloseTransition:Lcom/android/server/wm/Transition;

    .line 1048
    invoke-virtual {p2, p3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->markStartingSurfaceMatch(Landroid/view/SurfaceControl$Transaction;)V

    .line 1050
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz p1, :cond_df

    .line 1051
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p4, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 1052
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object p1

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1054
    :cond_df
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1055
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onTransitionFinish(Lcom/android/server/wm/Transition;)V
    .registers 7

    .line 1094
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController;->isMonitoringPrepareTransition(Lcom/android/server/wm/Transition;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 1095
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-object p1, p1, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mPrepareCloseTransition:Lcom/android/server/wm/Transition;

    if-nez p1, :cond_b0

    .line 1096
    invoke-virtual {p0, v1}, Lcom/android/server/wm/BackNavigationController;->clearBackAnimations(Z)V

    return-void

    .line 1100
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mPrepareCloseTransition:Lcom/android/server/wm/Transition;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1b

    .line 1101
    invoke-virtual {p0, v2}, Lcom/android/server/wm/BackNavigationController;->clearBackAnimations(Z)V

    .line 1103
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    if-eqz v0, :cond_b0

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    if-nez v0, :cond_25

    goto/16 :goto_b0

    .line 1106
    :cond_25
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x383ac77d153bcb3aL    # -5.64144236978451E37

    invoke-static {v0, v3, v4, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1113
    :cond_36
    :goto_36
    iget-object v0, p1, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const-string v3, "CoreBackPreview"

    if-ge v2, v0, :cond_85

    .line 1114
    iget-object v0, p1, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 1115
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_5b

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-nez v4, :cond_5b

    .line 1116
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-nez v4, :cond_5b

    goto :goto_82

    .line 1120
    :cond_5b
    iget-object v4, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->containTarget(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 1135
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result p1

    if-eqz p1, :cond_78

    .line 1136
    const-string p1, "Skip predictive back transition, another transition is playing"

    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController;->cancelPendingAnimation()V

    return-void

    .line 1145
    :cond_78
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    if-eqz p1, :cond_b0

    .line 1146
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController;->scheduleAnimation(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V

    .line 1147
    iput-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    return-void

    :cond_82
    :goto_82
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 1128
    :cond_85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Finished transition didn\'t include the targets open: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    .line 1129
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " close: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1128
    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController;->cancelPendingAnimation()V

    :cond_b0
    :goto_b0
    return-void
.end method

.method public removePredictiveSurfaceIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 779
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->markWindowHasDrawn(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public restoreBackNavigation()Z
    .registers 7

    .line 2118
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 2121
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenActivities(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)[Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 2124
    array-length v0, p0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v3, v1

    :goto_16
    if-ltz v0, :cond_2a

    .line 2125
    aget-object v4, p0, v0

    .line 2126
    iget-boolean v5, v4, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz v5, :cond_27

    .line 2127
    iget-object v3, v4, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 2128
    invoke-static {v4, v2, v1}, Lcom/android/server/wm/BackNavigationController;->restoreLaunchBehind(Lcom/android/server/wm/ActivityRecord;ZZ)V

    move v3, v2

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    :cond_2a
    return v3

    :cond_2b
    return v1
.end method

.method public restoreBackNavigationSetTransitionReady(Lcom/android/server/wm/Transition;)Z
    .registers 7

    .line 2137
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 2140
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenActivities(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)[Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 2142
    array-length v0, p0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_15
    if-ltz v0, :cond_2a

    .line 2143
    aget-object v3, p0, v0

    .line 2144
    invoke-virtual {p1, v3}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 2145
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    return v2

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    :cond_2a
    return v1
.end method

.method public final scheduleAnimation(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V
    .registers 2

    .line 720
    invoke-virtual {p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->build()Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Ljava/lang/Runnable;

    .line 721
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->-$$Nest$fgetmPreparedOpenTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)Lcom/android/server/wm/Transition;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 723
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController;->startAnimation()V

    return-void

    .line 725
    :cond_1e
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 726
    iget-boolean p1, p0, Lcom/android/server/wm/BackNavigationController;->mShowWallpaper:Z

    if-eqz p1, :cond_34

    .line 727
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 728
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    :cond_34
    return-void
.end method

.method public final scheduleAnimationInner(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V
    .registers 2

    .line 2248
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController;->scheduleAnimation(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V

    return-void
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    .line 2324
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 2325
    new-instance v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-direct {v0, p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    return-void
.end method

.method public shouldPauseTouch(Lcom/android/server/wm/WindowContainer;)Z
    .registers 3

    .line 1075
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mPrepareCloseTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_1a

    .line 1076
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public startAnimation()V
    .registers 3

    .line 2225
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 2227
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Ljava/lang/Runnable;

    if-eqz v0, :cond_1f

    .line 2228
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController;->canCancelAnimations()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    .line 2229
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackNavigationController;->clearBackAnimations(Z)V

    .line 2231
    :cond_13
    iput-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Ljava/lang/Runnable;

    return-void

    .line 2235
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Ljava/lang/Runnable;

    if-eqz v0, :cond_1f

    .line 2236
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2237
    iput-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mPendingAnimation:Ljava/lang/Runnable;

    :cond_1f
    return-void
.end method

.method public startBackNavigation(Landroid/os/RemoteCallback;Landroid/window/BackAnimationAdapter;)Landroid/window/BackNavigationInfo;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    .line 158
    sget-boolean v1, Lcom/android/server/wm/BackNavigationController;->sPredictBackEnable:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return-object v2

    .line 161
    :cond_a
    iget-object v1, v0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 178
    new-instance v10, Landroid/window/BackNavigationInfo$Builder;

    invoke-direct {v10}, Landroid/window/BackNavigationInfo$Builder;-><init>()V

    .line 179
    iget-object v11, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v11

    .line 180
    :try_start_17
    invoke-virtual {v0}, Lcom/android/server/wm/BackNavigationController;->isMonitoringFinishTransition()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 181
    const-string v1, "CoreBackPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Previous animation hasn\'t finish, status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    monitor-exit v11
    :try_end_36
    .catchall {:try_start_17 .. :try_end_36} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    :catchall_3a
    move-exception v0

    goto/16 :goto_417

    .line 188
    :cond_3d
    :try_start_3d
    iget v4, v3, Landroid/window/BackAnimationAdapter;->mOriginDisplayId:I

    invoke-virtual {v0, v4}, Lcom/android/server/wm/BackNavigationController;->isInProjectedMode(I)Z

    move-result v4

    const/4 v5, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v4, :cond_88

    .line 191
    invoke-virtual {v1, v13, v13}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 193
    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v6, v3, Landroid/window/BackAnimationAdapter;->mOriginDisplayId:I

    invoke-virtual {v4, v6}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 195
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v6

    if-nez v6, :cond_8c

    .line 197
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v7, v7, v5

    if-eqz v7, :cond_74

    iget v7, v3, Landroid/window/BackAnimationAdapter;->mOriginDisplayId:I

    int-to-long v7, v7

    sget-object v9, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v14, 0x48d69cc9a8603ff8L    # 7.879289555294385E42

    invoke-static {v9, v14, v15, v12, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 200
    :cond_74
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_8c

    .line 202
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_86

    .line 204
    invoke-virtual {v4, v13}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v4

    move-object v6, v4

    goto :goto_8c

    :cond_86
    move-object v6, v2

    goto :goto_8c

    .line 208
    :cond_88
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v6

    :cond_8c
    :goto_8c
    if-nez v6, :cond_b2

    .line 214
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_9e

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v6, -0x9b41c630000c8cdL    # -6.860898158053238E261

    invoke-static {v4, v6, v7, v13, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 216
    :cond_9e
    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_b1

    .line 218
    new-instance v6, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;

    invoke-direct {v6}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    move-object v6, v4

    goto :goto_b2

    :cond_b1
    move-object v6, v2

    :cond_b2
    :goto_b2
    if-nez v6, :cond_c0

    .line 222
    const-string v0, "CoreBackPreview"

    const-string v1, "Window is null, returning null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    monitor-exit v11
    :try_end_bc
    .catchall {:try_start_3d .. :try_end_bc} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 231
    :cond_c0
    :try_start_c0
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getImeContainer()Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v4

    if-nez v4, :cond_d4

    .line 232
    iget-object v4, v0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService;->getMostRecentUsedEmbeddedWindowForBack(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    move-result-object v6

    .line 234
    :cond_d4
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v4

    if-nez v4, :cond_ef

    .line 235
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v0, v0, v12

    if-eqz v0, :cond_ea

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, 0x27fbab9c3de33d6dL    # 4.389109128093316E-116

    invoke-static {v0, v3, v4, v13, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 237
    :cond_ea
    monitor-exit v11
    :try_end_eb
    .catchall {:try_start_c0 .. :try_end_eb} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 240
    :cond_ef
    :try_start_ef
    iget-object v4, v6, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 241
    invoke-virtual {v4}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v4

    if-eqz v4, :cond_114

    const/4 v0, 0x5

    .line 242
    invoke-virtual {v10, v0}, Landroid/window/BackNavigationInfo$Builder;->setType(I)Landroid/window/BackNavigationInfo$Builder;

    .line 243
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v0, v0, v12

    if-eqz v0, :cond_10b

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x618cfdd1a6bbcab2L    # -5.28141919168549E-162

    invoke-static {v0, v3, v4, v13, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 244
    :cond_10b
    invoke-virtual {v10}, Landroid/window/BackNavigationInfo$Builder;->build()Landroid/window/BackNavigationInfo;

    move-result-object v0

    monitor-exit v11
    :try_end_110
    .catchall {:try_start_ef .. :try_end_110} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 247
    :cond_114
    :try_start_114
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mEmbeddedWindowController:Lcom/android/server/wm/EmbeddedWindowController;

    .line 248
    invoke-virtual {v1, v6}, Lcom/android/server/wm/EmbeddedWindowController;->getByHostWindow(Lcom/android/server/wm/WindowState;)Ljava/util/ArrayList;

    move-result-object v1

    .line 250
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 251
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_128

    .line 252
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v8

    if-eqz v8, :cond_13a

    :cond_128
    if-eqz v7, :cond_130

    .line 253
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v8

    if-eqz v8, :cond_13a

    :cond_130
    if-eqz v7, :cond_14f

    if-eqz v4, :cond_14f

    .line 255
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    if-eq v8, v7, :cond_14f

    .line 258
    :cond_13a
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v0, v0, v12

    if-eqz v0, :cond_14a

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x55d06398df97c38aL

    invoke-static {v0, v3, v4, v13, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 259
    :cond_14a
    monitor-exit v11
    :try_end_14b
    .catchall {:try_start_114 .. :try_end_14b} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 262
    :cond_14f
    :try_start_14f
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getOnBackInvokedCallbackInfo()Landroid/window/OnBackInvokedCallbackInfo;

    move-result-object v8

    if-nez v8, :cond_161

    .line 264
    const-string v0, "CoreBackPreview"

    const-string v1, "No callback registered, returning null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    monitor-exit v11
    :try_end_15d
    .catchall {:try_start_14f .. :try_end_15d} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 267
    :cond_161
    :try_start_161
    invoke-virtual {v8}, Landroid/window/OnBackInvokedCallbackInfo;->isSystemCallback()Z

    move-result v9

    if-nez v9, :cond_169

    const/4 v9, 0x4

    goto :goto_16a

    :cond_169
    const/4 v9, -0x1

    .line 270
    :goto_16a
    invoke-virtual {v8}, Landroid/window/OnBackInvokedCallbackInfo;->getCallback()Landroid/window/IOnBackInvokedCallback;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/window/BackNavigationInfo$Builder;->setOnBackInvokedCallback(Landroid/window/IOnBackInvokedCallback;)Landroid/window/BackNavigationInfo$Builder;

    .line 271
    invoke-virtual {v8}, Landroid/window/OnBackInvokedCallbackInfo;->isAnimationCallback()Z

    move-result v15

    invoke-virtual {v10, v15}, Landroid/window/BackNavigationInfo$Builder;->setAnimationCallback(Z)Landroid/window/BackNavigationInfo$Builder;

    .line 272
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/window/BackNavigationInfo$Builder;->setTouchableRegion(Landroid/graphics/Rect;)Landroid/window/BackNavigationInfo$Builder;

    if-eqz v4, :cond_186

    .line 274
    iget v15, v4, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v10, v15}, Landroid/window/BackNavigationInfo$Builder;->setFocusedTaskId(I)Landroid/window/BackNavigationInfo$Builder;

    :cond_186
    if-eqz v1, :cond_1a1

    .line 278
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v15, v12

    :goto_18d
    if-ltz v15, :cond_1a1

    .line 279
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    iget-boolean v2, v2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mGestureToEmbedded:Z

    if-eqz v2, :cond_19d

    move v1, v12

    goto :goto_1a2

    :cond_19d
    add-int/lit8 v15, v15, -0x1

    const/4 v2, 0x0

    goto :goto_18d

    :cond_1a1
    move v1, v13

    .line 285
    :goto_1a2
    iget-object v2, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1b4

    if-nez v1, :cond_1b4

    .line 288
    invoke-virtual {v8}, Landroid/window/OnBackInvokedCallbackInfo;->isAnimationCallback()Z

    move-result v1

    if-eqz v1, :cond_1b4

    move v1, v12

    goto :goto_1b5

    :cond_1b4
    move v1, v13

    .line 287
    :goto_1b5
    invoke-virtual {v10, v1}, Landroid/window/BackNavigationInfo$Builder;->setAppProgressAllowed(Z)Landroid/window/BackNavigationInfo$Builder;

    .line 289
    iget-object v1, v0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    move-object/from16 v2, p1

    invoke-virtual {v1, v6, v2}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->startMonitor(Lcom/android/server/wm/WindowState;Landroid/os/RemoteCallback;)V

    .line 291
    invoke-virtual {v8}, Landroid/window/OnBackInvokedCallbackInfo;->getOverrideBehavior()I

    move-result v1

    .line 292
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    aget-boolean v2, v2, v12

    if-eqz v2, :cond_1e7

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v12, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v2, v15, v8, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v14, 0x380e880485133941L    # 1.1215435302787646E-38

    invoke-static {v12, v14, v15, v13, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1e7
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1f7

    if-eqz v4, :cond_1f1

    .line 296
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    goto :goto_1f2

    :cond_1f1
    const/4 v8, 0x0

    :goto_1f2
    if-eqz v7, :cond_1f7

    if-eq v8, v7, :cond_1f7

    move v1, v13

    .line 305
    :cond_1f7
    iget-object v8, v0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->clearPointerDownOutsideFocusRunnable()V

    const/4 v5, 0x4

    if-eq v9, v5, :cond_211

    if-eqz v7, :cond_211

    if-eqz v4, :cond_211

    .line 316
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v8

    if-eqz v8, :cond_214

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_211

    goto :goto_214

    :cond_211
    :goto_211
    const/4 v5, 0x4

    goto/16 :goto_3fb

    :cond_214
    :goto_214
    iget-boolean v8, v7, Lcom/android/server/wm/ActivityRecord;->mHasSceneTransition:Z

    if-eqz v8, :cond_219

    goto :goto_211

    .line 331
    :cond_219
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 332
    invoke-static {v4, v7, v8}, Lcom/android/server/wm/BackNavigationController;->getAnimatablePrevActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z

    move-result v9

    .line 334
    invoke-virtual {v0, v6}, Lcom/android/server/wm/BackNavigationController;->isKeyguardOccluded(Lcom/android/server/wm/WindowState;)Z

    move-result v12

    if-nez v9, :cond_22d

    :cond_228
    :goto_228
    const/4 v6, 0x0

    :cond_229
    :goto_229
    const/4 v9, 0x0

    const/4 v14, 0x4

    goto/16 :goto_34f

    .line 337
    :cond_22d
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v14, 0x1

    if-eq v9, v14, :cond_239

    move-object v9, v6

    move v14, v13

    const/4 v6, 0x0

    goto/16 :goto_34f

    .line 341
    :cond_239
    invoke-static {v7, v8}, Lcom/android/server/wm/BackNavigationController;->hasTranslucentActivity(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z

    move-result v9

    if-eqz v9, :cond_240

    goto :goto_228

    .line 344
    :cond_240
    invoke-static {v8}, Lcom/android/server/wm/BackNavigationController;->allActivitiesHaveProcesses(Ljava/util/ArrayList;)Z

    move-result v9

    if-nez v9, :cond_247

    goto :goto_228

    .line 348
    :cond_247
    invoke-static {v8}, Lcom/android/server/wm/BackNavigationController;->allActivitiesHaveWindow(Ljava/util/ArrayList;)Z

    move-result v9

    if-nez v9, :cond_24e

    goto :goto_228

    .line 352
    :cond_24e
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2bc

    if-nez v1, :cond_2bc

    if-eqz v12, :cond_25e

    .line 354
    invoke-static {v8}, Lcom/android/server/wm/BackNavigationController;->isAllActivitiesCanShowWhenLocked(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_228

    .line 355
    :cond_25e
    invoke-static {v8}, Lcom/android/server/wm/BackNavigationController;->isAllActivitiesCreated(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_228

    .line 357
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_29c

    .line 359
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-nez v5, :cond_27c

    .line 360
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    if-eqz v5, :cond_29c

    .line 361
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->canCustomizeAppTransition()Z

    move-result v1

    if-eqz v1, :cond_29c

    .line 363
    :cond_27c
    invoke-static {v6}, Lcom/android/server/wm/BackNavigationController;->isCustomizeExitAnimation(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_28b

    .line 364
    iget-object v1, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v10, v5, v1}, Landroid/window/BackNavigationInfo$Builder;->setWindowAnimations(Ljava/lang/String;I)Landroid/window/BackNavigationInfo$Builder;

    .line 368
    :cond_28b
    invoke-virtual {v7, v13}, Lcom/android/server/wm/ActivityRecord;->getCustomAnimation(Z)Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    move-result-object v1

    if-eqz v1, :cond_29c

    .line 370
    iget-object v5, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mEnterAnim:I

    iget v9, v1, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mExitAnim:I

    iget v1, v1, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mBackgroundColor:I

    invoke-virtual {v10, v5, v6, v9, v1}, Landroid/window/BackNavigationInfo$Builder;->setCustomAnimation(Ljava/lang/String;III)Landroid/window/BackNavigationInfo$Builder;

    .line 376
    :cond_29c
    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 377
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getLetterboxOverrides()Lcom/android/server/wm/AppCompatLetterboxOverrides;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Color;->toArgb()I

    move-result v1

    .line 376
    invoke-virtual {v10, v1}, Landroid/window/BackNavigationInfo$Builder;->setLetterboxColor(I)Landroid/window/BackNavigationInfo$Builder;

    .line 379
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    move-object v6, v1

    move v14, v2

    move-object v9, v7

    goto/16 :goto_34f

    .line 385
    :cond_2bc
    iget-object v1, v4, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/wm/LockTaskController;->isTaskLocked(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-nez v1, :cond_228

    .line 386
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v1

    if-eqz v1, :cond_2d4

    goto/16 :goto_228

    .line 392
    :cond_2d4
    iget-object v1, v4, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v6, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda8;

    invoke-direct {v6}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda8;-><init>()V

    const/4 v14, 0x1

    invoke-virtual {v1, v6, v4, v13, v14}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_2e7

    .line 400
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_2e8

    :cond_2e7
    const/4 v1, 0x0

    :goto_2e8
    if-eqz v1, :cond_2f0

    .line 402
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-static {v1, v8}, Lcom/android/server/wm/BackNavigationController;->findAdjacentActivityIfExist(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)V

    :cond_2f0
    if-eqz v6, :cond_229

    .line 405
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_229

    if-eqz v12, :cond_302

    .line 406
    invoke-static {v8}, Lcom/android/server/wm/BackNavigationController;->isAllActivitiesCanShowWhenLocked(Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_302

    goto/16 :goto_229

    .line 408
    :cond_302
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_321

    .line 410
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 412
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_31a

    .line 413
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->hasWallpaper()Z

    move-result v5

    if-eqz v5, :cond_31a

    const/4 v5, 0x1

    goto :goto_31b

    :cond_31a
    move v5, v13

    :goto_31b
    iput-boolean v5, v0, Lcom/android/server/wm/BackNavigationController;->mShowWallpaper:Z

    move-object v6, v1

    move-object v9, v4

    const/4 v14, 0x1

    goto :goto_34f

    .line 419
    :cond_321
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 420
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v9

    .line 421
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v12

    if-eqz v12, :cond_339

    if-ne v1, v9, :cond_229

    .line 423
    :cond_339
    invoke-static {v7, v8}, Lcom/android/server/wm/BackNavigationController;->hasTranslucentActivity(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_229

    .line 424
    invoke-static {v8}, Lcom/android/server/wm/BackNavigationController;->allActivitiesHaveWindow(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_229

    .line 425
    invoke-static {v8}, Lcom/android/server/wm/BackNavigationController;->allActivitiesHaveProcesses(Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_34d

    goto/16 :goto_229

    :cond_34d
    move-object v9, v6

    const/4 v14, 0x3

    .line 433
    :goto_34f
    invoke-virtual {v10, v14}, Landroid/window/BackNavigationInfo$Builder;->setType(I)Landroid/window/BackNavigationInfo$Builder;

    .line 435
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    const/16 v18, 0x1

    aget-boolean v1, v1, v18

    if-eqz v1, :cond_3a9

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_378

    const-string v1, ";"

    invoke-virtual {v8}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v12, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda9;

    invoke-direct {v12}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v5, v12}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_379

    :cond_378
    const/4 v1, 0x0

    :goto_379
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v6, :cond_386

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v17, v5

    goto :goto_388

    :cond_386
    const/16 v17, 0x0

    :goto_388
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v14}, Landroid/window/BackNavigationInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v1, v5, v12, v15}, [Ljava/lang/Object;

    move-result-object v1

    move-object v12, v4

    const-wide v4, 0x755cb5c5d22e3a9dL    # 2.1554118172289596E257

    invoke-static {v2, v4, v5, v13, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :goto_3a7
    const/4 v15, 0x1

    goto :goto_3ab

    :cond_3a9
    move-object v12, v4

    goto :goto_3a7

    :goto_3ab
    if-eq v14, v15, :cond_3b5

    const/4 v1, 0x3

    if-eq v14, v1, :cond_3b5

    const/4 v1, 0x2

    if-eq v14, v1, :cond_3b5

    if-nez v14, :cond_3bd

    .line 448
    :cond_3b5
    invoke-virtual {v3, v14}, Landroid/window/BackAnimationAdapter;->isAnimatable(I)Z

    move-result v1

    if-eqz v1, :cond_3bd

    move v1, v15

    goto :goto_3be

    :cond_3bd
    move v1, v13

    :goto_3be
    if-eqz v1, :cond_3d6

    move v2, v1

    .line 451
    iget-object v1, v0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-object v4, v0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    move-object v5, v12

    move v12, v2

    move v2, v14

    .line 452
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->prepareAnimation(ILandroid/window/BackAnimationAdapter;Lcom/android/server/wm/BackNavigationController$NavigationMonitor;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    move-result-object v1

    if-eqz v1, :cond_3cf

    move v13, v15

    .line 461
    :cond_3cf
    iput-boolean v13, v0, Lcom/android/server/wm/BackNavigationController;->mBackAnimationInProgress:Z

    if-eqz v13, :cond_3d8

    .line 464
    iput-object v1, v0, Lcom/android/server/wm/BackNavigationController;->mCurrentAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    goto :goto_3d8

    :cond_3d6
    move v12, v1

    move v2, v14

    .line 470
    :cond_3d8
    :goto_3d8
    invoke-virtual {v10, v12}, Landroid/window/BackNavigationInfo$Builder;->setPrepareRemoteAnimation(Z)Landroid/window/BackNavigationInfo$Builder;

    if-eqz v9, :cond_3eb

    .line 474
    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v3, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda10;

    invoke-direct {v3, v0, v2}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/BackNavigationController;I)V

    invoke-direct {v1, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 476
    invoke-virtual {v10, v1}, Landroid/window/BackNavigationInfo$Builder;->setOnBackNavigationDone(Landroid/os/RemoteCallback;)Landroid/window/BackNavigationInfo$Builder;

    goto :goto_3f0

    .line 478
    :cond_3eb
    iget-object v1, v0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    invoke-virtual {v1}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->stopMonitorForRemote()V

    .line 480
    :goto_3f0
    iput v2, v0, Lcom/android/server/wm/BackNavigationController;->mLastBackType:I

    .line 481
    invoke-virtual {v10}, Landroid/window/BackNavigationInfo$Builder;->build()Landroid/window/BackNavigationInfo;

    move-result-object v0

    monitor-exit v11
    :try_end_3f7
    .catchall {:try_start_161 .. :try_end_3f7} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 319
    :goto_3fb
    :try_start_3fb
    invoke-virtual {v10, v5}, Landroid/window/BackNavigationInfo$Builder;->setType(I)Landroid/window/BackNavigationInfo$Builder;

    .line 320
    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/BackNavigationController;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-virtual {v10, v1}, Landroid/window/BackNavigationInfo$Builder;->setOnBackNavigationDone(Landroid/os/RemoteCallback;)Landroid/window/BackNavigationInfo$Builder;

    const/4 v5, 0x4

    .line 322
    iput v5, v0, Lcom/android/server/wm/BackNavigationController;->mLastBackType:I

    .line 323
    invoke-virtual {v10}, Landroid/window/BackNavigationInfo$Builder;->build()Landroid/window/BackNavigationInfo;

    move-result-object v0

    monitor-exit v11
    :try_end_413
    .catchall {:try_start_3fb .. :try_end_413} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 482
    :goto_417
    :try_start_417
    monitor-exit v11
    :try_end_418
    .catchall {:try_start_417 .. :try_end_418} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public startPredictiveBackAnimation()Z
    .registers 5

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 133
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mCurrentAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 134
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_12
    move-exception p0

    goto :goto_37

    .line 136
    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2a

    .line 137
    iput-object v3, p0, Lcom/android/server/wm/BackNavigationController;->mCurrentAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 138
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 140
    :cond_2a
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController;->mCurrentAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 141
    iput-object v3, p0, Lcom/android/server/wm/BackNavigationController;->mCurrentAnimationBuilder:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 142
    invoke-virtual {p0, v1}, Lcom/android/server/wm/BackNavigationController;->scheduleAnimationInner(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V

    .line 143
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x1

    return p0

    :goto_37
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
