.class public Lcom/android/server/wm/BackNavigationController$AnimationHandler;
.super Ljava/lang/Object;
.source "BackNavigationController.java"


# instance fields
.field public mCloseAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

.field public mComposed:Z

.field public mOpenActivities:[Lcom/android/server/wm/ActivityRecord;

.field public mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

.field public mPrepareCloseTransition:Lcom/android/server/wm/Transition;

.field public final mShowWindowlessSurface:Z

.field public mStartingSurfaceTargetMatch:Z

.field public mSwitchType:I

.field public mWaitTransition:Z

.field public final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$j_Usepx8sckcuZ-ZGxie3DwEoCs(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->lambda$markStartingSurfaceMatch$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCloseAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mCloseAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOpenActivities(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)[Lcom/android/server/wm/ActivityRecord;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenActivities:[Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOpenAnimAdaptor(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShowWindowlessSurface(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mShowWindowlessSurface:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSwitchType(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWaitTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWaitTransition:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManagerService(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcomposeAnimations(Lcom/android/server/wm/BackNavigationController$AnimationHandler;Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;[Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->composeAnimations(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;[Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smcreateAdaptor(Lcom/android/server/wm/WindowContainer;ZILandroid/view/SurfaceControl$Transaction;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->createAdaptor(Lcom/android/server/wm/WindowContainer;ZILandroid/view/SurfaceControl$Transaction;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    .line 1188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1179
    iput v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    .line 1189
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 1190
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 1191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1110234

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mShowWindowlessSurface:Z

    return-void
.end method

.method public static createAdaptor(Lcom/android/server/wm/WindowContainer;ZILandroid/view/SurfaceControl$Transaction;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;
    .registers 5

    .line 1550
    new-instance v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;-><init>(Lcom/android/server/wm/WindowContainer;ZI)V

    if-eqz p1, :cond_1f

    .line 1554
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 1555
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 1558
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->updateOrganizedTaskFragmentSurface()V

    .line 1559
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p3, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_1f
    const/4 p1, 0x0

    const/16 p2, 0x100

    .line 1562
    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    return-object v0
.end method

.method public static isActivitySwitch(Lcom/android/server/wm/WindowContainer;[Lcom/android/server/wm/WindowContainer;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_34

    .line 1201
    array-length v1, p1

    if-eqz v1, :cond_34

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_34

    .line 1204
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    .line 1205
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_18
    if-ltz v1, :cond_33

    .line 1206
    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_32

    aget-object v3, p1, v1

    .line 1207
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eq p0, v3, :cond_2f

    goto :goto_32

    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    :cond_32
    :goto_32
    return v0

    :cond_33
    return v2

    :cond_34
    :goto_34
    return v0
.end method

.method public static isAnimateTarget(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;I)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2e

    .line 1411
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p2

    if-eqz p2, :cond_11

    return v1

    :cond_11
    if-eq p0, p1, :cond_2d

    .line 1415
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-eqz p2, :cond_1f

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result p2

    if-nez p2, :cond_2d

    .line 1416
    :cond_1f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-eqz p2, :cond_2c

    .line 1417
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    if-eqz p0, :cond_2c

    goto :goto_2d

    :cond_2c
    return v0

    :cond_2d
    :goto_2d
    return v1

    :cond_2e
    const/4 v2, 0x2

    if-ne p2, v2, :cond_4e

    if-eq p0, p1, :cond_4d

    .line 1420
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p2

    if-eqz p2, :cond_3f

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result p2

    if-nez p2, :cond_4d

    .line 1421
    :cond_3f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p2

    if-eqz p2, :cond_4c

    .line 1422
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    if-eqz p0, :cond_4c

    goto :goto_4d

    :cond_4c
    return v0

    :cond_4d
    :goto_4d
    return v1

    :cond_4e
    return v0
.end method

.method public static isDialogClose(Lcom/android/server/wm/WindowContainer;)Z
    .registers 1

    .line 1223
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static isTaskSwitch(Lcom/android/server/wm/WindowContainer;[Lcom/android/server/wm/WindowContainer;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_23

    .line 1216
    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_23

    .line 1219
    :cond_e
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eq p0, p1, :cond_23

    return v2

    :cond_23
    :goto_23
    return v0
.end method


# virtual methods
.method public clearBackAnimateTarget(Z)V
    .registers 4

    .line 1483
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 1484
    iput-boolean v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    .line 1485
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->finishPresentAnimations(Z)V

    :cond_a
    const/4 p1, 0x0

    .line 1487
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mPrepareCloseTransition:Lcom/android/server/wm/Transition;

    .line 1488
    iput-boolean v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWaitTransition:Z

    .line 1489
    iput-boolean v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mStartingSurfaceTargetMatch:Z

    .line 1490
    iput v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    .line 1491
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenActivities:[Lcom/android/server/wm/ActivityRecord;

    return-void
.end method

.method public final composeAnimations(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;[Lcom/android/server/wm/ActivityRecord;)Z
    .registers 9

    .line 1316
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    const-string v1, "CoreBackPreview"

    const/4 v2, 0x0

    if-nez v0, :cond_50

    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWaitTransition:Z

    if-eqz v0, :cond_c

    goto :goto_50

    :cond_c
    const/4 v0, 0x1

    .line 1320
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->clearBackAnimateTarget(Z)V

    .line 1321
    iget-object v3, p1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    .line 1322
    iget-object v4, p1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    if-eqz v4, :cond_2d

    if-eqz v3, :cond_2d

    array-length v4, v3

    if-eqz v4, :cond_2d

    array-length v4, v3

    const/4 v5, 0x2

    if-le v4, v5, :cond_20

    goto :goto_2d

    .line 1328
    :cond_20
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->initiate(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;[Lcom/android/server/wm/ActivityRecord;)V

    .line 1329
    iget p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    if-nez p1, :cond_28

    return v2

    .line 1332
    :cond_28
    iput-boolean v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    .line 1333
    iput-boolean v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWaitTransition:Z

    return v0

    .line 1324
    :cond_2d
    :goto_2d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "reset animation with null target close: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " open: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1324
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1317
    :cond_50
    :goto_50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Previous animation is running "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public containTarget(Ljava/util/ArrayList;Z)Z
    .registers 6

    .line 1353
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_18

    .line 1354
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0, v2, p2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    move-result v2

    if-eqz v2, :cond_15

    return v1

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1358
    :cond_18
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public containsBackAnimationTargets(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 5

    const/4 v0, 0x0

    .line 1498
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->containTarget(Ljava/util/ArrayList;Z)Z

    move-result p2

    if-eqz p2, :cond_15

    const/4 p2, 0x1

    .line 1499
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->containTarget(Ljava/util/ArrayList;Z)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1500
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->containTarget(Ljava/util/ArrayList;Z)Z

    move-result p0

    if-eqz p0, :cond_15

    :cond_14
    return p2

    :cond_15
    return v0
.end method

.method public final dumpOpenAnimTargetsToString()Ljava/lang/String;
    .registers 4

    .line 1535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1536
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 1537
    :goto_b
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    iget-object v2, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    array-length v2, v2

    if-ge v1, v2, :cond_29

    if-lez v1, :cond_19

    const/16 v2, 0x2c

    .line 1539
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1541
    :cond_19
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    iget-object v2, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1543
    :cond_29
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1544
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public finishPresentAnimations(Z)V
    .registers 7

    .line 1428
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenActivities:[Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_3b

    .line 1429
    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_7
    if-ltz v0, :cond_3b

    .line 1430
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenActivities:[Lcom/android/server/wm/ActivityRecord;

    aget-object v2, v2, v0

    .line 1431
    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent;->isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1432
    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1433
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->continueUpdateOrientationForDiffOrienLaunchingApp()V

    .line 1435
    :cond_1a
    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    if-eqz v3, :cond_30

    .line 1437
    iget-object v4, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mPrepareCloseTransition:Lcom/android/server/wm/Transition;

    if-eq v4, v3, :cond_2e

    iget-object v4, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    if-eqz v4, :cond_30

    invoke-static {v4}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->-$$Nest$fgetmPreparedOpenTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)Lcom/android/server/wm/Transition;

    move-result-object v4

    if-ne v4, v3, :cond_30

    :cond_2e
    move v3, v1

    goto :goto_31

    :cond_30
    const/4 v3, 0x0

    .line 1441
    :goto_31
    iget-boolean v4, v2, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz v4, :cond_38

    .line 1442
    invoke-static {v2, p1, v3}, Lcom/android/server/wm/BackNavigationController;->-$$Nest$smrestoreLaunchBehind(Lcom/android/server/wm/ActivityRecord;ZZ)V

    :cond_38
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 1446
    :cond_3b
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mCloseAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    const/4 v0, 0x0

    if-eqz p1, :cond_45

    .line 1447
    invoke-virtual {p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->cleanUp()V

    .line 1448
    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mCloseAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 1450
    :cond_45
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    if-eqz p1, :cond_50

    .line 1451
    iget-boolean v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mStartingSurfaceTargetMatch:Z

    invoke-virtual {p1, v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->cleanUp(Z)V

    .line 1452
    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    :cond_50
    return-void
.end method

.method public getAnimationTargets()[Landroid/view/RemoteAnimationTarget;
    .registers 4

    .line 1338
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    const/4 v0, 0x2

    .line 1341
    new-array v0, v0, [Landroid/view/RemoteAnimationTarget;

    .line 1342
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mCloseAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    invoke-static {v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmAnimationTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1343
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRemoteAnimationTarget:Landroid/view/RemoteAnimationTarget;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    return-object v0
.end method

.method public hasTargetDetached()Z
    .registers 4

    .line 1507
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1510
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_d
    if-ltz v0, :cond_23

    .line 1511
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    iget-object v2, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v2

    if-nez v2, :cond_20

    return v1

    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 1515
    :cond_23
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mCloseAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public final initiate(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;[Lcom/android/server/wm/ActivityRecord;)V
    .registers 11

    .line 1228
    iget-object v0, p1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mCloseTarget:Lcom/android/server/wm/WindowContainer;

    .line 1229
    iget-object v1, p1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mOpenTargets:[Lcom/android/server/wm/WindowContainer;

    .line 1230
    invoke-static {v0, v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isActivitySwitch(Lcom/android/server/wm/WindowContainer;[Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1f

    const/4 v2, 0x2

    .line 1231
    iput v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    .line 1233
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->promoteToTFIfNeeded(Lcom/android/server/wm/WindowContainer;[Lcom/android/server/wm/WindowContainer;)Landroid/util/Pair;

    move-result-object v0

    .line 1234
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 1235
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Lcom/android/server/wm/WindowContainer;

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_31

    .line 1236
    :cond_1f
    invoke-static {v0, v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTaskSwitch(Lcom/android/server/wm/WindowContainer;[Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1237
    iput v4, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    goto :goto_31

    .line 1238
    :cond_28
    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isDialogClose(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_a1

    const/4 v2, 0x3

    .line 1239
    iput v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    .line 1245
    :goto_31
    invoke-static {p1, p2, v0, v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->-$$Nest$mprepareTransitionIfNeeded(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;[Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowContainer;[Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    move-result-object p1

    .line 1247
    aget-object v2, p2, v3

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    if-eqz p1, :cond_3f

    move-object v5, v2

    goto :goto_43

    .line 1249
    :cond_3f
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    .line 1250
    :goto_43
    iget v6, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    invoke-static {v0, v3, v6, v5}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->createAdaptor(Lcom/android/server/wm/WindowContainer;ZILandroid/view/SurfaceControl$Transaction;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mCloseAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 1251
    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmAnimationTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    const-string v5, "CoreBackPreview"

    if-nez v0, :cond_61

    .line 1252
    const-string p2, "composeNewAnimations fail, skip"

    invoke-static {v5, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5d

    .line 1254
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->abort()V

    .line 1256
    :cond_5d
    invoke-virtual {p0, v4}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->clearBackAnimateTarget(Z)V

    return-void

    .line 1261
    :cond_61
    array-length v0, p2

    if-ne v0, v4, :cond_7c

    .line 1262
    aget-object v0, p2, v3

    .line 1263
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1264
    invoke-virtual {v3, v0}, Lcom/android/server/wm/DisplayContent;->rotateInDifferentOrientationIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 1265
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 1269
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v6

    .line 1268
    invoke-virtual {v3, v0, v6}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;I)V

    .line 1272
    :cond_7c
    new-instance v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    iget v3, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;-><init>(ZILandroid/view/SurfaceControl$Transaction;[Lcom/android/server/wm/WindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    .line 1274
    invoke-virtual {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->isValid()Z

    move-result v0

    if-nez v0, :cond_99

    .line 1275
    const-string p2, "compose animations fail, skip"

    invoke-static {v5, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_95

    .line 1277
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->abort()V

    .line 1279
    :cond_95
    invoke-virtual {p0, v4}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->clearBackAnimateTarget(Z)V

    return-void

    .line 1282
    :cond_99
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    invoke-static {v0, p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->-$$Nest$fputmPreparedOpenTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;Lcom/android/server/wm/Transition;)V

    .line 1283
    iput-object p2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenActivities:[Lcom/android/server/wm/ActivityRecord;

    return-void

    .line 1241
    :cond_a1
    iput v3, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    return-void
.end method

.method public isStartingSurfaceDrawn(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 1397
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->-$$Nest$fgetmPreparedOpenTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)Lcom/android/server/wm/Transition;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->-$$Nest$fgetmPreparedOpenTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)Lcom/android/server/wm/Transition;

    move-result-object v0

    .line 1398
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_2a

    :cond_1a
    const/4 v0, 0x1

    .line 1401
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 1402
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->-$$Nest$fgetmStartingSurface(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)Landroid/view/SurfaceControl;

    move-result-object p0

    if-eqz p0, :cond_2a

    return v0

    :cond_2a
    :goto_2a
    return v1
.end method

.method public isSupportWindowlessSurface()Z
    .registers 1

    .line 1348
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 1349
    invoke-virtual {p0}, Lcom/android/server/wm/TaskOrganizerController;->isSupportWindowlessStartingSurface()Z

    move-result p0

    return p0
.end method

.method public isTarget(Lcom/android/server/wm/WindowContainer;Z)Z
    .registers 7

    .line 1362
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-eqz p2, :cond_28

    .line 1366
    iget-object p2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    iget-object p2, p2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    array-length p2, p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_f
    if-ltz p2, :cond_27

    .line 1367
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    iget-object v2, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v2, v2, p2

    invoke-static {v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    invoke-static {p1, v2, v3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isAnimateTarget(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;I)Z

    move-result v2

    if-eqz v2, :cond_24

    return v0

    :cond_24
    add-int/lit8 p2, p2, -0x1

    goto :goto_f

    :cond_27
    return v1

    .line 1373
    :cond_28
    iget-object p2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mCloseAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    invoke-static {p2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Lcom/android/server/wm/WindowContainer;

    move-result-object p2

    iget p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    invoke-static {p1, p2, p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isAnimateTarget(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;I)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$markStartingSurfaceMatch$0()V
    .registers 3

    .line 1474
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1475
    :try_start_8
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    if-eqz p0, :cond_13

    const/4 v1, 0x1

    .line 1476
    invoke-virtual {p0, v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->cleanUpWindowlessSurface(Z)V

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_18

    .line 1478
    :cond_13
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_18
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public markStartingSurfaceMatch(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 1457
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mStartingSurfaceTargetMatch:Z

    if-eqz v0, :cond_5

    goto :goto_28

    :cond_5
    const/4 v0, 0x1

    .line 1460
    iput-boolean v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mStartingSurfaceTargetMatch:Z

    .line 1462
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    invoke-static {v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->-$$Nest$fgetmRequestedStartingSurfaceId(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_12

    goto :goto_28

    .line 1466
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    iget-object v1, v1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    array-length v1, v1

    sub-int/2addr v1, v0

    :goto_18
    if-ltz v1, :cond_26

    .line 1467
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    iget-object v2, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v2, v2, v1

    .line 1468
    iget-boolean v2, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mAppWindowDrawn:Z

    and-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    :cond_26
    if-nez v0, :cond_29

    :goto_28
    return-void

    .line 1473
    :cond_29
    new-instance v0, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lcom/android/server/wm/BackNavigationController$AnimationHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)V

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public markWindowHasDrawn(Lcom/android/server/wm/ActivityRecord;)V
    .registers 8

    .line 1377
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    if-eqz v0, :cond_3d

    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWaitTransition:Z

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->-$$Nest$fgetmRequestedStartingSurfaceId(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    goto :goto_3d

    .line 1382
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v2, v1

    :goto_1a
    if-ltz v0, :cond_36

    .line 1383
    iget-object v3, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    iget-object v3, v3, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v3, v3, v0

    .line 1384
    invoke-static {v3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    invoke-static {p1, v4, v5}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isAnimateTarget(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;I)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1385
    iput-boolean v1, v3, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mAppWindowDrawn:Z

    .line 1387
    :cond_30
    iget-boolean v3, v3, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mAppWindowDrawn:Z

    and-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    :cond_36
    if-eqz v2, :cond_3d

    .line 1390
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->cleanUpWindowlessSurface(Z)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public prepareAnimation(ILandroid/window/BackAnimationAdapter;Lcom/android/server/wm/BackNavigationController$NavigationMonitor;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;
    .registers 10

    .line 1883
    new-instance v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;-><init>(Lcom/android/server/wm/BackNavigationController$AnimationHandler;Landroid/window/BackAnimationAdapter;Lcom/android/server/wm/BackNavigationController$NavigationMonitor;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_42

    const/4 p2, 0x1

    if-eq p1, p2, :cond_35

    const/4 p2, 0x2

    if-eq p1, p2, :cond_20

    const/4 p2, 0x3

    if-eq p1, p2, :cond_13

    const/4 p0, 0x0

    return-object p0

    .line 1896
    :cond_13
    filled-new-array {p5}, [Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    .line 1897
    invoke-virtual {v0, p4, p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->setComposeTarget(Lcom/android/server/wm/WindowContainer;[Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    move-result-object p1

    .line 1898
    invoke-virtual {p1, p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->setIsLaunchBehind(Z)Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    move-result-object p0

    return-object p0

    .line 1890
    :cond_20
    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/android/server/wm/ActivityRecord;

    .line 1891
    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/wm/ActivityRecord;

    .line 1893
    invoke-virtual {v0, p6, p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->setComposeTarget(Lcom/android/server/wm/WindowContainer;[Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    move-result-object p1

    .line 1894
    invoke-virtual {p1, p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->setIsLaunchBehind(Z)Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    move-result-object p0

    return-object p0

    .line 1887
    :cond_35
    invoke-virtual {v0, p2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->setIsLaunchBehind(Z)Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    move-result-object p0

    filled-new-array {p5}, [Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    .line 1888
    invoke-virtual {p0, p4, p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->setComposeTarget(Lcom/android/server/wm/WindowContainer;[Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    move-result-object p0

    return-object p0

    .line 1900
    :cond_42
    filled-new-array {p6}, [Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    .line 1901
    invoke-virtual {v0, p8, p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->setComposeTarget(Lcom/android/server/wm/WindowContainer;[Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    move-result-object p1

    .line 1902
    invoke-virtual {p1, p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->setIsLaunchBehind(Z)Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final promoteToTFIfNeeded(Lcom/android/server/wm/WindowContainer;[Lcom/android/server/wm/WindowContainer;)Landroid/util/Pair;
    .registers 8

    .line 1289
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    .line 1290
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v1

    if-nez v1, :cond_12

    move-object p0, v0

    .line 1293
    :cond_12
    array-length v1, p2

    new-array v1, v1, [Lcom/android/server/wm/WindowContainer;

    .line 1294
    array-length v2, p2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_35

    .line 1295
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    move-object v2, p1

    :goto_1d
    if-ltz v0, :cond_33

    .line 1296
    aget-object v2, p2, v0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    aput-object v2, v1, v0

    if-eqz p0, :cond_2f

    move-object v2, p0

    goto :goto_30

    :cond_2f
    move-object v2, p1

    :goto_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    :cond_33
    move-object p1, v2

    goto :goto_5b

    :cond_35
    const/4 v2, 0x0

    .line 1300
    aget-object v3, p2, v2

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 1301
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v4

    if-nez v4, :cond_49

    goto :goto_4a

    :cond_49
    move-object v0, v3

    :goto_4a
    if-eq p0, v0, :cond_57

    if-eqz v0, :cond_4f

    goto :goto_51

    .line 1305
    :cond_4f
    aget-object v0, p2, v2

    :goto_51
    aput-object v0, v1, v2

    if-eqz p0, :cond_5b

    move-object p1, p0

    goto :goto_5b

    .line 1308
    :cond_57
    aget-object p0, p2, v2

    aput-object p0, v1, v2

    .line 1311
    :cond_5b
    :goto_5b
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimationTargets{ openTarget= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1522
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->dumpOpenAnimTargetsToString()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_14
    move-object v1, v2

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " closeTarget= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mCloseAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    if-eqz v1, :cond_25

    invoke-static {v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    :cond_25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mSwitchType= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mComposed= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mWaitTransition= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWaitTransition:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
